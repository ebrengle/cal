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
      1 => "Sunday",
      2 => "Monday",
      3 => "Tuesday",
      4 => "Wednesday",
      5 => "Thursday",
      6 => "Friday",
      0 => "Saturday"
    }
    @spaces = spaces[length]
  end

  def length_of_month
    leap_year = Year.leap_year(@month, @year)

    case @month
    when 1, 3, 5, 7, 8, 10, 12
      length_of_month = 31
    when 4, 6, 9, 11
      length_of_month = 30
    when 2
      if not leap_year
        length_of_month = 28
      else
        length_of_month = 29
      end
    end
  end

  def create_month_string
    spaces_for_month_to_start = Day.day_of_the_week(@month, @year)
    month = (1..length_of_month)
    array_of_days = month.to_a

    case spaces_for_month_to_start
    when 1
      array_of_days
    when 2
      array_of_days.unshift("  ")
    when 3
      array_of_days.unshift("  ", "  ")
    when 4
      array_of_days.unshift("  ", "  ", "  ")
    when 5
      array_of_days.unshift("  ", "  ", "  ", "  ")
    when 6
      array_of_days.unshift("  ", "  ", "  ", "  ", "  ")
    when 0
      array_of_days.unshift("  ", "  ", "  ", "  ", "  ", "  ")
    end

    create_month_string = array_of_days
  end



end