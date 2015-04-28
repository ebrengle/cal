class Day

  def self.day_of_the_week(month, year)

    day_date = 1

    if month == 1 or month == 2
      month = month + 12
      year = year - 1
    end

    day_of_the_week = (day_date + (((month + 1) * 26) / 10) + year + (year / 4) + (6 * ((year/100))) + (year/400))%7

  end

end


