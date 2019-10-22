require 'test/unit'
require_relative 'convert'
class TestConvert < Test::Unit::TestCase
  def test_conversion
    array = [4, 9, 7, 5, 8, 1, 3, 2, 3]
    array_min = [4, 8, 3]
    assert_equal(['D', 'D', 'D', 'D', 'D', 'M', 'L', 'M', 'L'], Convert.new.conversion(3, array_min, array))
  end
end