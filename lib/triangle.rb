class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(attributes)
    attributes.each do |key, value| 
      self.send(("#{key}="), value)
    end
  end
  
  def kind
    
  end
end