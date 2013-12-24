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

	end

end