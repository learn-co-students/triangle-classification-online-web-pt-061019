class Triangle
  attr_accessor :size1, :size2, :size3

  def initialize(size1,size2,size3)
    @size1 = size1
    @size2 = size2
    @size3 = size3
  end

  def kind
      valid_triagle
      if size1==size2 && size2==size3
        :equilateral
      elsif size1==size2 || size2==size3 || size1 == size3
        :isosceles
      # elsif size1 + size2 > size3 && size2 + size3 > size1 && size1 + size3 > size2
     else
        :scalene
      # else
      #   # begin
      #     raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
        # end
      end
    end

    def valid_triagle
      if (size1 <= 0 || size2 <= 0 || size3 <= 0) || !(size1 + size2 > size3 && size2 + size3 > size1 && size1 + size3 > size2)
          raise TriangleError
      end
    end

    class TriangleError < StandardError
      # def message
      #   "Sizes of triagle are need to be greater than 0 or
      #   The sum of the lengths of any two sides of a triangle
      #   always exceeds the length of the third side."
      # end
    end

end
