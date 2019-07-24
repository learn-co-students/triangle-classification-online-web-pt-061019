class Triangle
  attr_accessor :x, :y, :z,
  def initialize(x;, y:, Z:) #thre
    @x = x
    @y = y
    @z = z
  end

  def kind(x,y,z) # instance method
    self.triangle = triangle
    if triange.class != Triangle
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      triangle.class = self
    end
  end

  class TriangleError < StandardError #triangleError uses Standard Error
    def message
      "you must give the kind method an argument of an instance of the triangle class!"
    end
  end
end
# print("Input lengths of the triangle sides: ")
# x = int(input("x: "))
# y = int(input("y: "))
# z = int(input("z: "))

# if x == y == z:
# 	print("Equilateral triangle")
# elif x==y or y==z or z==x:
# 	print("isosceles triangle")
# else:
# 	print("Scalene triangle")
 |x|-|y|<=|x+y|<=|x|+|y|.
The above should work, you will need to check that none of your inputs are <= 0 (takes care of 0 and negative numbers) and check for inequality where side1 + side2 <= side3 || side2 + side3 <= side1 etc. these should raise your TriangleError message. These would be followed by your above code to determine type of triangle once no TriangleErrors were raised.
