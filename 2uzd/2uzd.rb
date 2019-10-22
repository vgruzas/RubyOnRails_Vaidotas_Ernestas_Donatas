# frozen_string_literal: true

# This is class for second task. Naming bad. Ik.
class Uzd
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def min_value
    array.min
  end

  def max_value
    array.max
  end

  def min_value_count
    array.count(min_value)
  end

  def max_value_count
    array.count(max_value)
  end

  def delete_all_min_max
    array.delete(min_value)
    array.delete(max_value)
  end
end
