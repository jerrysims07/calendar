if(ARGV.length == 2)
	month = ARGV[0]
	year = ARGV[1]
else
	month = 1
	year = ARGV[0]
end

firstDay = Zeller.calc(month, year)
reportYear = new Month(year)
reportMonth = new Month(month, firstDay, reportYear.isLeapYear?)
