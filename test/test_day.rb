require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test
  def test_zellers_day_output
    day = Day.day_of_the_week(1, 2012)
    assert_equal 1, day
  end

  def test_day_start_saturday
    day = Day.day_of_the_week(8, 2015)
    assert_equal 0, day
  end

  def test_day_start_sunday
    day = Day.day_of_the_week(1, 2012)
    assert_equal 1, day
  end

  def test_day_start_wednesday
    day = Day.day_of_the_week(4, 2015)
    assert_equal 4, day
  end
end