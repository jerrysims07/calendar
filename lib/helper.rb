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
	feb = Month.new(2, Zeller.calc(2, year.to_i), y.is_leap_year?)
	mar = Month.new(3, Zeller.calc(3, year.to_i), y.is_leap_year?)
	apr = Month.new(4, Zeller.calc(4, year.to_i), y.is_leap_year?)
	may = Month.new(5, Zeller.calc(5, year.to_i), y.is_leap_year?)
	jun = Month.new(6, Zeller.calc(6, year.to_i), y.is_leap_year?)
	jul = Month.new(7, Zeller.calc(7, year.to_i), y.is_leap_year?)
	aug = Month.new(8, Zeller.calc(8, year.to_i), y.is_leap_year?)
	sep = Month.new(9, Zeller.calc(9, year.to_i), y.is_leap_year?)
	oct = Month.new(10, Zeller.calc(10, year.to_i), y.is_leap_year?)
	nov = Month.new(11, Zeller.calc(11, year.to_i), y.is_leap_year?)
	dec = Month.new(12, Zeller.calc(12, year.to_i), y.is_leap_year?)

	puts y.print_year
	puts "\n"
	draw_three(jan, feb, mar)
	draw_three(apr, may, jun)
	draw_three(jul, aug, sep)
	draw_three(oct, nov, dec)
end

def draw_three(one, two, three)
	lines = []
	lines[0] = one.print_name_for_full_year+" "+two.print_name_for_full_year+" "+three.print_name_for_full_year+"\n"
	lines[1] = one.print_day_labels + " " + two.print_day_labels + " " + three.print_day_labels+"\n"
	lines[2] = one.print_week_1 + " " + two.print_week_1 + " " + three.print_week_1 + "\n"
	lines[3] = one.print_week_2_and_beyond(2)+ " " + two.print_week_2_and_beyond(2)+ " " + three.print_week_2_and_beyond(2)+ "\n"
	lines[4] = one.print_week_2_and_beyond(3)+ " " + two.print_week_2_and_beyond(3)+ " " + three.print_week_2_and_beyond(3)+ "\n"
	lines[5] = one.print_week_2_and_beyond(4)+ " " + two.print_week_2_and_beyond(4)+ " " + three.print_week_2_and_beyond(4)+ "\n"
	lines[6] = one.print_week_2_and_beyond(5)+ " " + two.print_week_2_and_beyond(5)+ " " + three.print_week_2_and_beyond(5)+ "\n"
	lines[7] = one.print_week_2_and_beyond(6)+ " " + two.print_week_2_and_beyond(6)+ " " + three.print_week_2_and_beyond(6)+ "\n"
	returnString = lines.join("")
	puts returnString
end
