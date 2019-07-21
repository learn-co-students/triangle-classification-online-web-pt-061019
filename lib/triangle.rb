class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1.size == nil && @side2.size == nil && @side3.size == nil
      begin
        raise TriangleError
      rescue TriangleError
        puts error.message
      end
    end
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 == @side2 && @side2 != @side3) || (@side2 == @side3 && @side2 != @side1) || (@side1 == @side3 && @side2 != @side3)
      :isosceles
    else @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end
