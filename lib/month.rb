class Month
	@month
	@numberOfDays
	@firstDay
	@year
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
		numberOfSpaces.times do
			printLine += " "
		end
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
			firstWeek.push (" "+dayOfMonth.to_s)
			currentDay+=1
			dayOfMonth+=1
		end
		returnString = " " + firstWeek.join(" ")
	end

	def print_week_2_and_beyond(week)
		dayOfMonth = (((week-1) * 7)+2) - @firstDay
		i=1
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
		returnString = " " + week.join(" ")		
	end

	def print_days
		weeks = []
		weeks[0] = []
		# construct first week
		# write the leading blanks before the first day
		currentDay = 0
		while currentDay < (@firstDay - 1)%7 do
			weeks[0][currentDay] = "  "
			currentDay+=1
		end

		# write the first week's actual days
		dayOfMonth = 1
		while currentDay <= 6 do
			weeks[0].push (" "+dayOfMonth.to_s)
			currentDay+=1
			dayOfMonth+=1
		end
		i=0
		while dayOfMonth <= @numberOfDays do
			i+=1
			weeks[i] = []
			currentDay = 0
			while dayOfMonth <= @numberOfDays && currentDay < 7 do
				if dayOfMonth < 10
					weeks[i].push (" "+dayOfMonth.to_s)
				else weeks[i].push dayOfMonth
				end
				currentDay+=1
				dayOfMonth+=1
			end
		end
		returnString = ""
		i= 0
		weeks.length.times do
			returnString += weeks[i].join(" ") 
			returnString += "\n"
			i+=1
		end
		returnString
	end

	def construct_month_for_printing
		printLines = []
		printLines.push(self.print_day_labels)
		printLines.push(self.print_days)
		returnString = ""
		i=0
		printLines.length.times do
			returnString += printLines[i]
			returnString += "\n"
			i+=1
		end
		returnString
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
