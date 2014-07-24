require_relative '../lib/year'
require 'minitest/autorun'



class TestYear < MiniTest::Unit::TestCase

	def test_new_year_creates_new_instance
		y = Year.new(2012)
		assert_equal(Year, y.class)
	end

	def test_new_year_instance_assigns_year
		y = Year.new(2012)
		assert_equal(2012, y.year)
	end

	def test_is_leap_year_div_by_4
		y = Year.new(2012)
		assert_equal(true,y.leap?)
	end

	def test_is_leap_year_div_by_400
		y = Year.new(2000)
		assert_equal(true,y.leap?)
	end

	def test_is_leap_year_not_div_by_4
		y = Year.new(2011)
		assert_equal(false,y.leap?)
	end

	def test_is_leap_year_not_div_by_400
		y = Year.new(1900)
		assert_equal(false,y.leap?)
	end

	def test_print_year
		y = Year.new(2012)
		assert_equal("                             2012"+"\n", y.print_year_label)
	end

end
