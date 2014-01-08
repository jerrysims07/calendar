require_relative "./month"
require_relative "./year"
require_relative "./zeller"

def process_one_month(month, year)
	y = Year.new(year.to_i)
	m = Month.new(month.to_i, Zeller.calc(month.to_i,year.to_i), y.is_leap_year?)

	printString =  m.print_name_for_individual  + year + "\n"
	printString += m.construct_month_for_printing
  puts printString

end

def process_full_year(year)
	# construct the 12 months
	y = Year.new(year.to_i)
	jan = Month.new(1, Zeller.calc(1, year.to_i), y.is_leap_year?)
	feb = Month.new(2, Zeller.calc(1, year.to_i), y.is_leap_year?)
	mar = Month.new(3, Zeller.calc(1, year.to_i), y.is_leap_year?)
	apr = Month.new(4, Zeller.calc(1, year.to_i), y.is_leap_year?)
	may = Month.new(5, Zeller.calc(1, year.to_i), y.is_leap_year?)
	jun = Month.new(6, Zeller.calc(1, year.to_i), y.is_leap_year?)
	jul = Month.new(7, Zeller.calc(1, year.to_i), y.is_leap_year?)
	aug = Month.new(8, Zeller.calc(1, year.to_i), y.is_leap_year?)
	sep = Month.new(9, Zeller.calc(1, year.to_i), y.is_leap_year?)
	oct = Month.new(10, Zeller.calc(1, year.to_i), y.is_leap_year?)
	nov = Month.new(11, Zeller.calc(1, year.to_i), y.is_leap_year?)
	dec = Month.new(12, Zeller.calc(1, year.to_i), y.is_leap_year?)

	y.print_year

end
