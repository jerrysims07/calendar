require_relative "./month"
require_relative "./year"
require_relative "./zeller"

def process_one_month(month, year)
	y = Year.new(year.to_i)
	m = Month.new(month.to_i, Zeller.calc(month.to_i,year.to_i), y.leap?)

	printString =  m.print_name_for_individual  + year + "\n"
	printString += m.construct_month_for_printing
  puts printString

end

def process_full_year(year)
	# construct the 12 months
	y = Year.new(year)
	months = generate_months(year, y.leap?)

	puts y.print_year + "\n"
	4.times do |i|
		draw_three_months(months[(3*i)], months[(3*i)+1], months[(3*i)+2])
	end
end

def draw_three_months(one, two, three)
	lines = []
	lines[0] = 	one.print_name_for_full_year+" "+two.print_name_for_full_year+" "+three.print_name_for_full_year.rstrip+"\n"
	lines[1] = 	one.print_day_labels + "  " + two.print_day_labels + "  " + three.print_day_labels.rstrip+"\n"
	lines[2] = 	one.print_week_1 + " " + two.print_week_1 + " " + three.print_week_1.rstrip + "\n"
	# print the rest of the weeks of the month
	i = 3
	5.times do
		lines[i] = one.print_week_2_and_beyond(i-1)+ "  " + two.print_week_2_and_beyond(i-1)+ "  " + three.print_week_2_and_beyond(i-1).rstrip+ "\n"
		i+=1
	end
	returnString = lines.join("")
	puts returnString
end

def generate_months(year, leap)
	months = []
	12.times do |i|
		months[i] = Month.new(i+1, Zeller.calc(i+1, year.to_i), leap)
	end
	months
end
