class Day

  def self.day_of_the_week(month, day, year)

    day == 1

    if month == 1 or 2
      month = month + 12
      year = year - 1
    end

  dayOfTheWeek = (day + (((month + 1) * 26)/10).floor + year + (year/4).floor + (6 * (year/100)).floor + (year/400).floor)%7

  end

end


