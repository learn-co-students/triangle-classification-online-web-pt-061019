class Triangle
  attr_accessor :side_a, :side_b, :side_c 
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a 
    @side_b = side_b 
    @side_c = side_c
  end 
  
  def side_valid 
    if (side_a + side_b > side_c) &&(side_b + side_c > side_a) && (side_c + side_a > side_b)
      true 
    else 
      false 
    end 
  end 
  
  def greater_zero
    if side_a <= 0 || side_b <= 0 || side_c <=0 
      false 
    else 
      true 
    end 
  end 
  
  def kind 
    if side_valid && greater_zero == true 
      if side_a == side_b && side_b == side_c
        :equilateral
      elsif side_a == side_b || side_b == side_c || side_a == side_c
        :isosceles
      else
        :scalene
      end
    else 
      raise TriangleError
    end 
  end
  
  class TriangleError < StandardError
  end
  
end
