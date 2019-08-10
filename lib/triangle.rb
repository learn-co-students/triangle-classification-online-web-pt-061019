class Triangle

    attr_accessor :s1, :s2, :s3

    def initialize(s1, s2, s3)
        @s1 = s1
        @s2 = s2
        @s3 = s3
    end

    def kind
        sides = [@s1, @s2, @s3].sort
        count = sides.uniq.length

        if sides[0] + sides[1] <= sides[2]
            raise TriangleError
        end
        if count == 1
            return :equilateral
        elsif count == 2
            return :isosceles
        else
            return :scalene
        end


    end

    class TriangleError < StandardError

    end

end
