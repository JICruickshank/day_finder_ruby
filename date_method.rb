

def find_day_of_the_week(day, month, year)
y = year % 100
c = year/100
k = day
  if month == 1 || month == 2
    m = month + 10;
  else
    m = month - 2
  end
# 3/3/2002
  # 3 + 2 - 40 + 1 + 0 + 5 (-29  -1)
  w = (k + ((2.6 * m - 0.2).floor) -(2 * c) + y + (y/4) + (c/4)) % 7

  case w
  when 0
    weekday = "Sunday"
  when 1
    weekday = "Monday"
  when 2
    weekday = "Tuesday"
  when 3
    weekday = "Wednesday"
  when 4
    weekday = "Thursday"
  when 5
    weekday = "Friday"
  when 6
     weekday = "Saturday"
  end

  return "The date #{day}/#{month}/#{year} is a #{weekday}"

end

p find_day_of_the_week(30,10,2036)
