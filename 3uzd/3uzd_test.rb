require 'test/unit'
require_relative '3uzd'

class MyTest < Test::Unit::TestCase
  def setup
    # Do nothing
  end

  def test_perimeter
    uzd3 = Uzd3.new(5, 5, 5)
    assert_equal(15, uzd3.perimeter)
  end

  def test_area
    uzd3 = Uzd3.new(5, 5, 5)
    assert_equal(7.5, uzd3.area)
  end

  def test_which_triangle
    uzd3 = Uzd3.new(5, 5, 5)
    assert_equal("Lygiakrastis", uzd3.which_triangle)
    uzd3 = Uzd3.new(2,5,4)
    assert_equal("Ivairiakrastis", uzd3.which_triangle)
    uzd3 = Uzd3.new(2,5,5)
    assert_equal("Lygiasonis", uzd3.which_triangle)
  end 
end