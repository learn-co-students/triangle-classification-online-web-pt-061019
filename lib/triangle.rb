class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1_in, side_2_in, side_3_in)
    @side_1 = side_1_in
    @side_2 = side_2_in
    @side_3 = side_3_in
  end

  def kind
    if @side_1 <= 0 && @side_2 <= 0 && @side_3 <= 0
      raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3
      return :equilateral
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
