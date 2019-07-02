class Triangle
  attr_accessor :size1, :size2, :size3

  def initialize(size1,size2,size3)
    @size1 = size1
    @size2 = size2
    @size3 = size3
  end

  def kind
    if size1==size2 && size2==size3
      :equilateral
    elsif size1==size2 || size2==size3 || size1 == size3
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
      # triangle error code
  end
end
