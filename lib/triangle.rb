class Triangle

  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one, @side_two, @side_three = side_one, side_two, side_three
  end


  def kind
    form_triangle
    if side_one == side_two == side_three
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_one == side_three
      :isosceles
    else
      :scalene
    end
  end

  def form_triangle
    real_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
    [side_one, side_two, side_three].each do |side|
      real_triangle << false if side = <= 0
      raise TriangleError if real_triangle.include?(flase)
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0"
    end
end
