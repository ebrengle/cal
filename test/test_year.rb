require_relative 'helper'
require_relative '../lib/year'

class TestYear < Minitest::Test

  def test_leap_year_false_2001
    year = Year.leap_year(2, 2001)
    assert_equal false, year
  end

  def test_leap_year_true_2000
    year = Year.leap_year(2, 2000)
    assert_equal true, year
  end

  def test_leap_year_false_1900
    year = Year.leap_year(1, 1900)
    assert_equal false, year
  end

end