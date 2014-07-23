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
			adjusted_month = 13
			year -= 1
		when 2
			adjusted_month = 14
			year -= 1
		else
			adjusted_month = month
		end

		year_of_century = year % 100
		century = (year / 100).floor

		day_of_week = (1 + ((13 * (adjusted_month+1))/5).floor +
								year_of_century + (year_of_century/4).floor +
								(century/4).floor - (2 * century)) % 7
	end

end
