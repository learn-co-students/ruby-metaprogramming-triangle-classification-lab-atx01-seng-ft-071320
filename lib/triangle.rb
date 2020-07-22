class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 

  def kind 
    if (@side_1 + @side_2) > @side_3 == false || (@side_2 + @side_3) > @side_1 == false || (@side_3 + @side_1) > @side_2 == false
      raise TriangleError
    elsif @side_1 > 0 == false || @side_2 > 0 == false || @side_3 > 0 == false
      raise TriangleError
    else 
      if @side_1 == @side_2 && @side_1 == @side_3 
        :equilateral
      elsif @side_1 == @side_2
        :isosceles
      elsif @side_1 == @side_3
        :isosceles
      elsif @side_2 == @side_3
        :isosceles
      else
        :scalene
      end
    end
  end 

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. Plus, each side must be larger than 0"
    end 
  end
end
