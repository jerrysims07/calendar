require_relative "./month"
require_relative "./year"
require_relative "./zeller"

def process_one_month month, year
  y = Year.new(year.to_i)
  m = Month.new(month.to_i, Zeller.calc(month.to_i,year.to_i), y.is_leap_year?)

  results = m.print_name_for_individual << year << "\n"
  results << m.print_day_labels << "\n"
  results << print_weeks(m)
  puts results
end

def print_weeks m
  results = ""
  m.weeks.each{|week| results << week << "\n" }
  results
end

def process_full_year year
  y = Year.new(year)
  y.print
end
