class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
    [side_one, side_two, side_three].each do |side|
      real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(flase)
    end
  end

  class TriangleError < StandardError

  end
end
