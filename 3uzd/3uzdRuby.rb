require 'cmath'
def triangle(one, two, three)
  is_valid_triangle?(one, two, three)
end

def is_valid_triangle?(one, two, three)
  sides = [one, two, three].sort
  if (sides[0] + sides[1] <= sides[2]) || (sides[0] == 0)
    return "Neimanomas trikampis!"
  else
    which_triangle?(one, two, three)
  end
end


def which_triangle?(one, two, three)
  triangles = {TrikampisLygiakrastis: [60, 60, 60], TrikampisLygiasonis: [0], TrikampisIvairiakrastis: [0]}
  angle_a = (Math.acos((two**2+three**2-one**2)/(2*two*three).to_f)*180/Math::PI).round(2)
  angle_b = (Math.acos((three**2+one**2-two**2)/(2*three*one).to_f)*180/Math::PI).round(2)
  angle_c = (Math.acos((one**2+two**2-three**2)/(2*one*two).to_f)*180/Math::PI).round(2)
  if angle_a && angle_b == 60
    return :TrikampisLygiakrastis, triangles[:TrikampisLygiakrastis]

  elsif angle_a != angle_b && angle_b != angle_c
    triangles[:TrikampisIvairiakrastis] = [angle_a, angle_b, angle_c]
    return :TrikampisIvairiakrastis, triangles[:TrikampisIvairiakrastis]

  else
    triangles[:lygiasoniTrikampisLygiasoniss] = [angle_a, angle_b, angle_c]
    return :TrikampisLygiasonis, triangles[:TrikampisLygiasonis]
  end
end
puts "Iveskite trys kraštinės:"
krastine_1 = gets.chomp.to_i
krastine_2 = gets.chomp.to_i
krastine_3 = gets.chomp.to_i
puts triangle(krastine_1, krastine_2, krastine_3)
p= (krastine_1 + krastine_2 + krastine_3) .to_f / 2
puts "Trikampio p apskaičiavimas: #{p}"
puts "Trikampio plotas: #{CMath.sqrt(p*(p-krastine_1)*(p-krastine_2)*(p-krastine_3))}"