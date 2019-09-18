puts Iveskite dvimacio masyvo eiluciu skaiciu 
size = gets.chomp.to_i
array = Array.new(size) { Array.new(size) }
arrayMin = Array.new(size)

puts Is eiles, nuo virsutinio desiniojo kampo ivardinkite dvimacio masyvo elementus
sum = 0.0
size.times do i
  size.times do j
    array[i][j] = gets.chomp.to_i
    arrayMin[i] = array[i][i]
  end
end

puts Konvertuotas masyvas.

size.times do i
  size.times do j
    if array[i][j]  arrayMin.min
      array[i][j] = 'D'
    elsif array[i][j]  arrayMin.min
      array[i][j] = 'M'
    else
      array[i][j] = 'L'
    end
  end
end

puts array.map { x x.join( ) }