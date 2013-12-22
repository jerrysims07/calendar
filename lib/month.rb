class Month
	@numberOfDays
	@firstDay

	def initialize(month, firstDay, leap)
		case month
		when 1,3,5,7,8,10,12
			@numberOfDays = 31
		when 4,6,9,11
			@numberOfDays = 30
		elsif leap
			@numberOfDays = 29
		else @numberOfDays = 28
		end
		@firstDay = firstDay
	end

	def print_individual_month
	end

	def print_month_for_full_year
	end

	def print_name
	end

	def print_day_labels
	end

	def print_days
	end

end