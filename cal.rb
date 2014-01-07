require_relative "lib/helper"

if(ARGV.length == 2)
	month = ARGV[0]
	year = ARGV[1]
	process_one_month(month, year)
else
	year = ARGV[0]
	process_full_year(year)
end

puts "hello, world"

