require 'date'
class Calendar

  def days_in_month(year, month) # return number of days in a month
    (Date.new(year, 12, 31) << (12-month)).day
  end

  def make_days_month(year, month) # returns array of days in month 
    repeats = days_in_month(year,month)
    month_array = []
    d = 1
    repeats.times do |day|
      month_array.push("#{year}-#{month}-#{d}")
      d +=1
    end
    month_array     
  end

  def generate_year(year)
    m = 1
    year_array = []
    12.times do |month|
      year_array.push(make_days_month(year, m))
      m += 1
    end
    year_array.flatten
  end

  def parse_array(array)
    parsed_array = []
    array.each do |date|
      parsed_array.push(Date.parse(date))
    end
    parsed_array
  end
  
  def grab_weekday(date_object)
    date_object.strftime("%A")
  end
end

