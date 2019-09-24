puts "Iveskite masyvo elementu kieki:"
n = gets.chomp.to_i
array = Array.new(n)
puts "Iveskite masyvo elementus: "
n.times do |i|
  array[i] = gets.chomp.to_i
end


min = array.min
max = array.max

puts  " A) Min:" + min.to_s
puts "Max: " + max.to_s

puts " B) Kiekis lygus min: " + array.count(min).to_s
puts "Kiekis lygus max: " + array.count(max).to_s

puts " C) Visi like elementai be max ir min: "

array.delete(min)
array.delete(max)
array.each { |i| print "#{i} " }