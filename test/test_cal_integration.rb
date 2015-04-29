require_relative 'helper'

class TestCalIntegration < MiniTest::Test


#Standard Error Message - No Arguments
  def test_no_arguments
    skip
    output = `./cal.rb`
    expected = <<EOS
Date not in acceptable format/range.
EOS
  assert_equal expected, output
  end

#Month the Starts on a Sunday
  def test_month_that_starts_on_sunday
    skip
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
  assert_equal expected, output
  end

#Test Regular Leap Year
  def test_regular_leap_year
    skip
    output = `./cal.rb 02 2016`
    expected = <<EOS
   February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
  assert_equal expected, output
  end

#Test Century Leap Year
  def test_century_leap_year
    skip
    output = `./cal.rb 02 2000`
    expected = <<EOS
      February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
  assert_equal expected, output
  end

#Test 400 Leap Year
  def test_400_leap_year
    skip
    output = `./cal.rb 02 2400`
    expected = <<EOS
   February 2400
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
  assert_equal expected, output
  end

#Test Jan 2015
  def test_january_2015
    skip
    output = `./cal.rb 01 2015`
    expected = <<EOS
    January 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
  assert_equal expected, output
  end

#Test Feb 2015
  def test_february_2015
    skip
    output = `./cal.rb 02 2015`
    expected = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28

EOS
  assert_equal expected, output
  end

#Test March 2015
  def test_march_2015
    skip
    output = `./cal.rb 03 2015`
    expected = <<EOS
     March 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
  assert_equal expected, output
  end

#Test April 2015
  def test_april_2015
    skip
    output = `./cal.rb 04 2015`
    expected = <<EOS
     April 2015
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
  assert_equal expected, output
  end

#Test May 2015
  def test_may_2015
    skip
    output = `./cal.rb 05 2015`
    expected = <<EOS
      May 2015
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31

EOS
  assert_equal expected, output
  end

#Test June 2015
  def test_june_2015
    skip
    output = `./cal.rb 06 2015`
    expected = <<EOS
     June 2015
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30

EOS
  assert_equal expected, output
  end

#Test July 2015
  def test_july_2015
    skip
    output = `./cal.rb 07 2015`
    expected = <<EOS
     July 2015
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
  assert_equal expected, output
  end

#Test August 2015
  def test_august_2015
    skip
    output = `./cal.rb 08 2015`
    expected = <<EOS
    August 2015
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31

EOS
  assert_equal expected, output
  end

#Test September 2015
  def test_september_2015
    skip
    output = `./cal.rb 09 2015`
    expected = <<EOS
   September 2015
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

EOS
  assert_equal expected, output
  end

#Test October 2015
  def test_october_2015
    skip
    output = `./cal.rb 10 2015`
    expected = <<EOS
    October 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
  assert_equal expected, output
  end

#Test November 2015
  def test_november_2015
    skip
    output = `./cal.rb 11 2015`
    expected = <<EOS
   November 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
  assert_equal expected, output
  end

#Test December 2015
  def test_december_2015
    skip
    output = `./cal.rb 12 2015`
    expected = <<EOS
   December 2015
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
  assert_equal expected, output
  end

  #Min Date
  def test_min_date
    skip
    output = `./cal.rb 01 1800`
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
  assert_equal expected, output
  end

    #Max Date
  def test_max_date
    skip
    output = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
  assert_equal expected, output
  end

    #Date too early
  def test_date_too_early
    skip
    output = `./cal.rb 12 1799`
    expected = <<EOS
Date not in acceptable format/range.
EOS
  assert_equal expected, output
  end

    #Date too late
  def test_date_too_late
    skip
    output = `./cal.rb 01 3001`
    expected = <<EOS
Date not in acceptable format/range.
EOS
  assert_equal expected, output
  end

    #Written month error
  def test_date_written_month
    skip
    output = `./cal.rb April 2000`
    expected = <<EOS
Date not in acceptable format/range.
EOS
  assert_equal expected, output
  end

    #Written year first
  def test_date_year_month
    skip
    output = `./cal.rb 2000 04`
    expected = <<EOS
Date not in acceptable format/range.
EOS
  assert_equal expected, output
  end

end