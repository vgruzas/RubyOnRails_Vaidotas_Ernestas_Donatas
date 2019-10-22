class Convert
  def conversion(size, array_min, array)
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
  end
end