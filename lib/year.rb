# require_relative "../test/test_year"

class Year
	@yearNumber
	attr_reader:yearNumber

	def initialize(year)
		@yearNumber = year
	end

	def isLeapYear?
		if @yearNumber % 4 == 0 && @yearNumber % 100 != 0
			return true
		elsif @yearNumber % 100 == 0 && @yearNumber % 400 == 0
			return true
		else
			return false
		end
	end

end