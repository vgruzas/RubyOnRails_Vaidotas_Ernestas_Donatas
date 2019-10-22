# frozen_string_literal: true

require 'test-unit'
require_relative '2uzd'

# class for testing 2uzd class
class UzdTest < Test::Unit::TestCase
  def setup
    array = [-1, -1, 3, 5, 5, 5]
    @uzd = Uzd.new(array)
  end

  def teardown
    ## Nothing really
  end

  def test_min_value
    assert_equal(-1, @uzd.min_value)
  end

  def test_max_value
    assert_equal(5, @uzd.max_value)
  end

  def test_min_value_count
    assert_equal(2, @uzd.min_value_count)
  end

  def test_max_value_count
    assert_equal(3, @uzd.max_value_count)
  end

  def test_delete_min_max_value
    expected_array = [3]
    @uzd.delete_all_min_max
    assert_equal(expected_array, @uzd.array)
  end
end
