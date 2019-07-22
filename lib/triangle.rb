class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

  end

  def valid_triange
    if @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two || @side_two + @side_three <= @side_one || @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      return false
    else
      return true
    end
  end

  def kind
    if self.valid_triange == false
      raise TriangleError
    elsif
      @side_one == @side_two && @side_two == @side_three
        :equilateral
      elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        :isosceles
      elsif
      @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
      :scalene
    end
  end

class TriangleError < StandardError

end

end