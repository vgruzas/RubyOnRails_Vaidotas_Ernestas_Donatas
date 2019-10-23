# frozen_string_literal: true

require 'test/unit'
require_relative 'convert'
# This is test class for conversion of array
class TestConvert < Test::Unit::TestCase
  def test_conversion
    array = [[4, 9, 7], [5, 8, 1], [3, 2, 3]]
    array_min = [4, 8, 3]
    conv = Convert.new.conversion(3, array_min, array)
    assert_equal([['D', 'D', 'D'], ['D', 'D', 'M'], ['L', 'M', 'L']], conv)
  end

  def test_compare
    arr = 3
    array_min = [4, 8, 3]
    comp = Convert.new.compare(arr, array_min)
    assert_equal('L', comp)
  end
end
