# require 'date'
# require_relative '../test/test_zeller'

class Zeller

	def self.calc(month, year)
		if month.nil? or year.nil?
			raise ArgumentError, "Zeller requires two arguments"
		end
		if(year < 1800 or year > 3000)
			raise ArgumentError, "Year out of range. This method supports years 1800-3000"
		end
		case month
		when 1 
			adjustedMonth = 13
			year -= 1
		when 2 
			adjustedMonth = 14
			year -= 1		
		else
			adjustedMonth = month
		end

		yearOfCentury = year % 100
		century = (year / 100).floor

		dayOfWeek = (1 + ((13 * (adjustedMonth+1))/5).floor + 
								yearOfCentury + (yearOfCentury/4).floor + 
								(century/4).floor - (2 * century)) % 7
	end

end