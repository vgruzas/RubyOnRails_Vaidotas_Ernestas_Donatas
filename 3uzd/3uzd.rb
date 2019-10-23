# frozen_string_literal: true
#Testas
class Uzd3
  attr_accessor :one
  attr_accessor :two
  attr_accessor :three

  def initialize(krastine1, krastine2,krastine3)
    @one = krastine1
    @two = krastine2
    @three = krastine3
  end

  def perimeter
    (one + two + three) .to_f
  end

  def area
    (one + two + three) .to_f / 2
  end

  def which_triangle
    angle_a = (Math.acos((two**2 + three**2 - one**2) / (2 * two * three).to_f) * 180 / Math::PI).round(2)
    angle_b = (Math.acos((three**2 + one**2 - two**2) / (2 * three * one).to_f) * 180 / Math::PI).round(2)
    angle_c = (Math.acos((one**2 + two**2 - three**2) / (2 * one * two).to_f) * 180 / Math::PI).round(2)
    which_triangle2(angle_a, angle_b, angle_c)
  end

  def which_triangle2(angle_a, angle_b, angle_c)
    triangles = { Lygiakrast: [60, 60, 60], Lygiason: [0], Ivairiakrast: [0] }
    if angle_a && angle_b == 60
      return 'Lygiakrastis'

    elsif angle_a != angle_b && angle_b != angle_c
      triangles[:TrikampisIvairiakrastis] = [angle_a, angle_b, angle_c]
      [:TrikampisIvairiakrastis, triangles[:TrikampisIvairiakrastis]]
      return 'Ivairiakrastis'

    else
      triangles[:lygiasoniTrikampisLygiasoniss] = [angle_a, angle_b, angle_c]
      [:TrikampisLygiasonis, triangles[:TrikampisLygiasonis]]
      return 'Lygiasonis'

    end
  end
  end