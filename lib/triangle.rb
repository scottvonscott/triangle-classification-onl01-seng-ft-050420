require 'pry'

class Triangle

attr_accessor :side_a, :side_b, :side_c


def initialize (side_a, side_b, side_c)
  @side_a = side_a
  @side_b = side_b
  @side_c = side_c
end

def kind
  if @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b||@side_c || @legth_b == @side_a||@side_c
      :isosceles
    elsif @side_a != @side_b && @side_b != @side_c
      :scalene
    elsif @side_a + @side_b < @side_c || @side_b + @side_c < @side_a
      raise TriangleError
    elsif @side_a * @side_b * @side_c == 0
      raise TriangleError
    else

  end
end


class TriangleError < StandardError
end

end


# def kind
#   triangle = self
#   case triangle
#   when @side_a == @side_b && @side_b == @side_c
#       :equilateral
#     when @side_a == @side_b||@side_c || @legth_b == @side_a||@side_c
#       :isosceles
#     when @side_a + @side_b < @side_c || @side_b + @side_c < @side_a
#       raise TriangleError
#     when @side_a * @side_b * @side_c == 0
#       raise TriangleError
#     else
#       :scalene
#   end
# end
