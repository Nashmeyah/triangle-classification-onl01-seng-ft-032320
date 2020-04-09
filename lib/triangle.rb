class Triangle
  def initialize(side1, side2, side3)
    @triangles = []
    @triangles << side1
    @triangles << side2
    @triangles << side3
  end
  def valid?
    if (@triangles.none? {|side| side <= 0}) && (@triangles[0] + @triangles[1] > @triangles[2] && @triangles[1] + @triangles[2] > @triangles[0] && @triangles[0] + @triangles[2] > @triangles[1])
     return true
    else
     false
    end
  end
  def kind
    if valid?
      if
        @triangles[0] == @triangles[1] && @triangles[1] == @triangles[2]
        return :equilateral
      elsif @triangles.uniq.length == 2
        return :isosceles
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
