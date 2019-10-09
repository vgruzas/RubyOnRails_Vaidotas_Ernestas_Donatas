puts 'Iveskite dvimacio masyvo eiluciu skaiciu:'
size = gets.chomp.to_i
array = Array.new(size) { Array.new(size) }
array_min = Array.new(size)
puts 'Is eiles, nuo virsutinio desiniojo kampo ivardinkite dvimacio masyvo
elementus.'
size.times do |i|
  size.times do |j|
    array[i][j] = gets.chomp.to_i
    array_min[i] = array[i][i]
  end
end
puts 'Konvertuotas masyvas:'
size.times do |i|
  size.times do |j|
    array[i][j] = if array[i][j] > array_min.min
                    'D'
                  elsif array[i][j] < array_min.min
                    'M'
                  else
                    'L'
                  end
  end
end
puts(array) & :join
