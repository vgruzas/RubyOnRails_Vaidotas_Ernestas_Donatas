# frozen_string_literal: true

# This is class for conversion of array
class Convert
  def conversion(size, array_min, array)
    size.times do |i|
      size.times do |j|
        array[i][j] = compare(array[i][j], array_min)
      end
    end
    array
  end

  def compare(arr, array_min)
    if arr > array_min.min
      'D'
    elsif arr < array_min.min
      'M'
    else
      'L'
    end
  end
end
