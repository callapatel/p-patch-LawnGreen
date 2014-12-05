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

  def generate_year(year) # generates an array of arrays (one per month)
    m = 1
    year_array = []
    12.times do |month|
      year_array.push(make_days_month(year, m))
      m += 1
    end
    year_array
  end

  def grab_month(year, month)
    month -= 1
    array = generate_year(year)[month]
    parse_array(array)
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

  def date_layover(month_array)
    grid = []
    days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    5.times do |not_important|
      grid.push(days)
    end
    grid = grid.flatten
    grid.each_with_index { |item, index|
      if item == grab_weekday(month_array.first)
        i = index
        month_array.each do |date|
          grid[i] = date
          i += 1
        end
        #until month_array.length == 0
        #  grid[i] == month_array.shift
        #  i += 1
        #end

      break
      end  
    }
    grid
  end


end
