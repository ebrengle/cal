require_relative 'day'
require_relative 'year'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def to_s
    <<EOS
    #{name} #{year}
#{week_day_names}
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
  end

  def name
    name = {
      1 => "January",
      2 => "February",
      3 => "March",
      4 => "April",
      5 => "May",
      6 => "June",
      7 => "July",
      8 => "August",
      9 => "September",
      10 => "October",
      11 => "November",
      12 => "December"
     }
     name[@month]
  end



  def week_day_names
    week_day_names = "Su Mo Tu We Th Fr Sa"
  end



  def spaces
    length = Day.day_of_the_week(@month, @year)

    spaces = {
      1 => 1,
      2 => 4,
      3 => 7,
      4 => 10,
      5 => 13,
      6 => 16,
      0 => 19
    }
    spaces[length]
  end



  def length_of_month
    leap_year = Year.leap_year(@month, @year)

    if @month == 1 || @month == 3 || @month == 5 || @month == 7 || @month == 8 || @month == 10 || @month == 12
      length_of_month = 31
    elsif @month == 4 || @month == 6 || @month == 9 || @month == 11
      length_of_month = 30
    elsif @month == 2 && leap_year == false
      length_of_month = 28
    else
      length_of_month = 29
    end
  end


end