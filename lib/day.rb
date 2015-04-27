class Day

  def self.dayOfTheWeek(month, day, year)
  dayOfTheMonth = 1
  m = month
  Y = year

  dayOfTheWeek = (dayOfTheMonth + (((@month + 1)26)/10).floor + Y + (Y/4).floor + (6(Y/100)).floor + (Y/400).floor)%7

  return dayOfTheWeek

  end

end


#Zeller's Basic Setup

  # dayOfTheMonth = 1
  # m = @month
  # Y = @year

  # dayOfTheWeek = (dayOfTheMonth + (((@month + 1)26)/10).floor + Y + (Y/4).floor + (6(Y/100)).floor + (Y/400).floor)%7

  # return dayOfTheWeek