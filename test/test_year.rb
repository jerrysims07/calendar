require 'year.rb'
require 'minitest/autorun'


class TestYear < MiniTest::Unit::TestCase

	def new_year_creates_new_instance
		y = new year(2012)
		assert_equal(:Year, y.class)
	end

	def new_year_instance_assigns_year
		y = new year(2012)
		assert_equal(2012, y.yearNumber)
	end

end 