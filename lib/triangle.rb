class Triangle
  attr_accessor :sides
  
  def initialize(side1, side2, side3)
    # @side1 = side1
    # @side2 = side2 
    # @side3 = side3
    @sides = [side1, side2, side3]
  end
  
  def valid?
    sum1 = self.sides[0] + self.sides[1]
    sum2 = self.sides[0] + self.sides[2]
    sum3 = self.sides[1] + self.sides[2]
    
    self.sides.all? {|side| side > 0 && side != nil} && (sum1 > self.sides[2]) && (sum2 > self.sides[1]) && (sum3 > self.sides[0])
  end
  
  def kind 
    if !self.valid?
      raise TriangleError
    elsif self.sides.uniq.count == 1
      :equilateral 
    elsif self.sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message 
      "This triangle is invalid."
    end
  end
  
end
