require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test
  def test_zellers_day_output
    d = Day.dayOfTheWeek(1, 1, 2012)
    assert_equal d, 1
  end

  def test_day_start_sunday
    skip
    m = Month.new(1, 2012)
    assert_equal m.spaces, 1
  end

  def test_day_start_saturday
    skip
    m = Month.new(8, 2015)
    assert_equal m.spaces, 16
  end

  def test_day_start_wednesday
    skip
    m = Month.new(4, 2015)
    assert_equal m.spaces, 10
  end
end