# frozen_string_literal: true

require_relative 'convert'
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
Convert.new.conversion(size, array_min, array)
puts(array)
