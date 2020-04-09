class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if side_1 > 0 && side_2 > 0 && side_3 > 0
      if side_1 == side_2 && side_2 == side_3 && side_1 == side_3
        :equilateral
      elsif side_1 == side_2 && side_2 == side_3 || side_1 == side_3 && side_2 == side_3
        :isosceles
      else side_1 != side_2 && side_2 != side_3 && side_1 != side_3
        :scalene
      end
    else
      begin
      raise PartnerError
    rescue PartnerError => error
        puts error.message
    end
    end
  end

  class TriangleError < StandardError
      def message
        "Invalid lengths"
      end
  end
end
