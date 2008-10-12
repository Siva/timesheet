require 'Calendar'

# helper function to fill calendar
# fire up console and use the following example to fill calendar
# CalendarFill.fill(Date.new(2008,8,30), Date.new(2008,12,31))

class CalendarFill
  def self.fill(from, to)
    startDate = from.beginning_of_week
    endDate = startDate.next_week
    puts endDate
    while(to > endDate)
      puts endDate
      Calendar.new({:start_date => startDate, :end_date => endDate}).save
      startDate = endDate 
      endDate = startDate.next_week
    end
  end
end
