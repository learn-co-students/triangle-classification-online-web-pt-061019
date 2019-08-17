class Triangle
  # write code here

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind

    if @s1 + @s2 < @s3 || @s1 + @s3 < @s2 || @s2 + @s3 < @s1
      raise TriangleError
    else
      if @s1 = @s2 = @s3
        return :equilateral

      elsif @s1 = @s2 || @s1 = @s3 || @s2 = @s3
        return :isosceles

      elsif @s1 != @s2 && @s1 != @s3 && @s2 != @s3
        return :scalene

      end
    end

  class TriangleError < StandardError
    # triangle error code
  end

end
