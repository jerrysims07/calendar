class Year
	@yearNumber

	def initialize(year)
		@yearNumber = year
	end

	def isLeapYear
		if @yearNumber % 4 == 0 
			if(@yearNumber % 100 == 0 && @yearNumber % 400 == 0)
				return true
			else return false
			end
		else return false
		end
	end

end