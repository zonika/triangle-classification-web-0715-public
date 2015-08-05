
class Triangle

  def initialize(side1,side2,side3)
    @allsides=[side1,side2,side3]
    findproblems
  end
  def findproblems
    perms=@allsides.permutation(3).to_a
    if @allsides.any? { |n| n<=0 }
      raise TriangleError
    elsif perms.any? { |a| a[0]+a[1]<= a[2] }
      raise TriangleError
    end
  end
  def kind
    howmany=@allsides.uniq
    case howmany.length
    when 3
      :scalene
    when 2
      :isosceles
    when 1
      :equilateral
    end
  end
end

class TriangleError < StandardError

end
