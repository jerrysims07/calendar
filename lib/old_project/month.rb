class Month
	@month
	@numberOfDays
	@firstDay
	@year
	attr_reader:numberOfDays
	attr_reader:firstDay
	attr_reader:month


	def initialize(month, firstDay, leap)
		@numberOfDays = get_number_of_days(month, leap)
		@firstDay = firstDay
		@month = month
		@monthName = get_name(month)
	end

	def get_number_of_days(month, leap)
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
	end


	def print_name_for_full_year
		numberOfSpaces = (20 - @monthName.length)/2
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
		numberOfSpaces = (20 - (@monthName.length+5))/2
		printLine = ""
		printLine += (" " * numberOfSpaces)
		printLine += @monthName + " "
	end

	def print_day_labels
		"Su Mo Tu We Th Fr Sa"
	end

	def print_week_1
		# construct first week
		# write the leading blanks before the first day
		firstWeek = []
		currentDay = 0
		while currentDay < (@firstDay - 1)%7 do
			firstWeek[currentDay] = "  "
			currentDay+=1
		end

		# write the first week's actual days
		dayOfMonth = 1
		while currentDay <= 6 do
			firstWeek.push (dayOfMonth.to_s+" ")
			currentDay+=1
			dayOfMonth+=1
		end
		returnString = " " + firstWeek.join(" ")
	end

	def print_week_2_and_beyond(week)
		if @firstDay == 0
			@firstDay = 7
		end
		# set to date of first day of that week
		dayOfMonth = (((week-1) * 7)+2) - @firstDay
		week = []
		currentDay = 0

		while dayOfMonth <= @numberOfDays && currentDay < 7 do
			if dayOfMonth < 10
				week.push (" "+dayOfMonth.to_s)
			else week.push dayOfMonth
			end
			currentDay+=1
			dayOfMonth+=1
		end
		while(currentDay < 7) do
			week.push("  ")
			currentDay += 1
		end
		returnString = week.join(" ")		
	end


	def construct_month_for_printing
		printLines = []
		printLines.push(self.print_day_labels.rstrip+"\n")
		printLines.push(self.print_week_1.rstrip+"\n")
		5.times do |i|
			printLines.push(self.print_week_2_and_beyond(i+2).rstrip+"\n")
		end
		printLines.join("")
	end

end

def get_name(monthNumber)
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
