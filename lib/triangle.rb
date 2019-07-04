class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def valid?
    sides = [length1, length2, length3]
    result = sides.all? {|side| side > 0}
    result && (@length1 + @length2 > @length3) && (@length1 + @length3 > @length2) && (@length2 + @length3 > @length1)
  end

  def kind
    if !valid?
      raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      result = :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      result = :isosceles
    else
      result = :scalene
    end
    result
  end
end

class TriangleError < StandardError
end
