# frozen_string_literal: true
#Testas
require_relative '3uzd'

puts 'Iveskite trys kraštinės:'
krastine1 = gets.chomp.to_i
krastine2 = gets.chomp.to_i
krastine3 = gets.chomp.to_i

uzd3 = Uzd3.new(krastine1, krastine2, krastine3)
puts uzd3.perimeter
puts uzd3.area
puts uzd3.which_triangle