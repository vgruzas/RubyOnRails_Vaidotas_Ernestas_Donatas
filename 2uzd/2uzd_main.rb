# frozen_string_literal: true

require_relative '2uzd'

puts 'Iveskite masyvo elementu kieki:'
n = gets.chomp.to_i
array = Array.new(n)
puts 'Iveskite masyvo elementus: '
n.times do |i|
  array[i] = gets.chomp.to_i
end

uzd = Uzd.new(array)
puts  ' A) Min: ' + uzd.min_value.to_s
puts 'Max: ' + uzd.max_value.to_s

puts ' B) Kiekis lygus min: ' + uzd.min_value_count.to_s
puts 'Kiekis lygus max: ' + uzd.max_value_count.to_s

puts ' C) Visi like elementai be max ir min: '

uzd.delete_all_min_max
uzd.array.each { |i| print "#{i} " }
