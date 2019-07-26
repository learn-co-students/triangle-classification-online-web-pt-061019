class Triangle
  # write code here

  attr_accessor :s1, :s2, :s3
  @sides = []

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @sides = [s1, s2, s3]
  end

  def kind
    if(valid_numbers? == false || valid_triangle? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def equilateral?
    (@s1 == @s2) && (@s1 == @s3)
  end

  def scalene?
    (@s1 != @s2) && (@s1!= @s3) && (@s2 != @s3)
  end

  def isosceles?
    (@s2 == @s3) || (@s1 == @s2) || (@s1 = @s3)
  end

  def valid_numbers?
    @sides.each do |s|
      if s.negative? || s == 0
        false
      end
    end
  end

  def valid_triangle?
    (@s1 + @s2 > @s3) && (@s2 + @s3 > @s1) && (@s1 + @s3 > @s2)
  end

  class TriangleError < StandardError

  end
end
