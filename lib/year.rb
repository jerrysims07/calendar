# require_relative "../test/test_year"

class Year
	@yearNumber
	attr_reader:yearNumber

	def initialize(year)
		@yearNumber = year
	end

	def isLeapYear?
		if(@leapYear % 4 == 0 && @leapYear % 100 != 0)
			return true
		elsif(@leapYear % 100 == 0 && @leapYear % 400 != 0)
			return true
		else 
			return false
		end
	end

end