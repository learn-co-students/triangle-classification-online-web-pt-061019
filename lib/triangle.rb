require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    # binding.pry
    if (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side3 + side1) <= side2
          raise TriangleError #custom error
            # HINT1:The sum of the lengths of any two sides of a triangle always exceeds
            # the length of the third side. This is a principle known as the triangle inequality.
    elsif side1 <= 0 || side2 <= 0 || side3 <= 0
          raise TriangleError #custom error
            # HINT2: each side must be larger than 0.
    else
        if side1 == side2 && side2 == side3 && side1 == side3
          :equilateral #all sides equal
        elsif side1 != side2 && side2 != side3 && side1 != side3
          :scalene # no equal sides
        elsif side1 == side2 || side2 == side3 || side3 == side1
          :isosceles #two equal sides
        end
    end
  end

  class TriangleError < StandardError
  end

end
