require 'year'
require 'minitest/autorun'

class TestYear < MiniTest::Unit::TestCase

	def new_year_creates_new_instance
		y = new Year(2012)
		assert_equal("Year", y.class)
	end

	def new_year_instance_assigns_year
		y = new Year(2012)
		assert_equal(2012, y.yearNumber)
	end

end 