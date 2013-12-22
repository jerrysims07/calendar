class Month

	def initialize(month, year)
		case month
		when 1,3,5,7,8,10,12
			@numberOfDays = 31
		when 4,6,9,11
			@numberOfDays = 30
		elsif self.isLeapYear?
			@numberOfDays = 29
		else @numberOfDays = 28

		end
		@firstDay = Zeller.calc(month, year)
	end
end