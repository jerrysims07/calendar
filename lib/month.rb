class Month
	@month
	@numberOfDays
	@firstDay
	attr_reader:numberOfDays
	attr_reader:firstDay
	attr_reader:month


	def initialize(month, firstDay, leap)
		case month
		when 1,3,5,7,8,10,12
			@numberOfDays = 31
		when 4,6,9,11
			@numberOfDays = 30
		else
	 		if leap 
	 			@numberOfDays = 29
			else @numberOfDays = 28
			end
		end
		@firstDay = firstDay
		@month = month
		@monthName = get_month_name(month)
	end

	def print_name_for_full_year
		numberOfSpaces = (21 - @monthName.length)/2
		printLine = ""
		numberOfSpaces.times do
			printLine += " "
		end
		printLine += @monthName
		until printLine.length == 21
			printLine += " "
		end
		printLine
	end

	def print_name_for_individual
		printLine = @monthName
	end

	def print_day_labels
	end

	def print_days
	end

end

def get_month_name(monthNumber)
	case monthNumber
	when 1
		return "January"
	when 2
		return "February"
	when 3
		return "March"
	when 4
		return "April"
	when 5 
		return "May"
	when 6
		return "June"
	when 7
		return "July"
	when 8 
		return "August"
	when 9 
		return "September"
	when 10
		return "October"
	when 11
		return "November"
	when 12
		return "December"
	end
end