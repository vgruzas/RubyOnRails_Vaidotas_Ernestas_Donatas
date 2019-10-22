# frozen_string_literal: true

require 'cmath'
def triangle(one, two, three)
  valid_triangle?(one, two, three)
end

def valid_triangle?(one, two, three)
  sides = [one, two, three].sort
  if (sides[0] + sides[1] <= sides[2]) || (sides[0]).zero?
    'Neimanomas trikampis!'
  else
    which_triangle?(one, two, three)
  end
end

# rubocop:disable Metrics/AbcSize

def which_triangle?(one, two, three)
  angle_a = (Math.acos((two**2 + three**2 - one**2) / (2 * two * three).to_f) *
      180 / Math::PI).round(2)
  angle_b = (Math.acos((three**2 + one**2 - two**2) / (2 * three * one).to_f) *
      180 / Math::PI).round(2)
  angle_c = (Math.acos((one**2 + two**2 - three**2) / (2 * one * two).to_f) *
      180 / Math::PI).round(2)
  which_triangle2(angle_a, angle_b, angle_c)
end

def which_triangle2(angle_a, angle_b, angle_c)
  triangles = { Lygiakrast: [60, 60, 60], Lygiason: [0], Ivairiakrast: [0] }
  if angle_a && angle_b == 60
    [:TrikampisLygiakrastis, triangles[:TrikampisLygiakrastis]]
  elsif angle_a != angle_b && angle_b != angle_c
    triangles[:TrikampisIvairiakrastis] = [angle_a, angle_b, angle_c]
    [:TrikampisIvairiakrastis, triangles[:TrikampisIvairiakrastis]]
  else
    triangles[:lygiasoniTrikampisLygiasoniss] = [angle_a, angle_b, angle_c]
    [:TrikampisLygiasonis, triangles[:TrikampisLygiasonis]]
  end
end
# rubocop:enable Metrics/AbcSize

puts 'Iveskite trys kraštinės:'
krastine1 = gets.chomp.to_i
krastine2 = gets.chomp.to_i
krastine3 = gets.chomp.to_i
puts triangle(krastine1, krastine2, krastine3)
p = (krastine1 + krastine2 + krastine3) .to_f / 2
puts "Trikampio p apskaičiavimas: #{p}"
puts "Trikampio plotas: #{CMath.sqrt(p * (p - krastine1) * (p - krastine2) *
                                         (p - krastine3))}"
