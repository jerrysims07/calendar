require_relative '../lib/month'
require 'minitest/autorun'



class TestMonth < MiniTest::Unit::TestCase

	def test_new_month_creates_new_instance
		m = Month.new(3, 1, true)
		assert_equal(Month, m.class)
	end

	def test_new_month_instance_assigns_month
		m = Month.new(3, 1, true)
		assert_equal(3, m.month)
	end

	def test_february_leap_year_is_29_days
		m = Month.new(2, 1, true)
		assert_equal(29, m.numberOfDays)
	end

	def test_february_non_leap_year_is_28_days
		m = Month.new(2, 1, false)
		assert_equal(28, m.numberOfDays)
	end

	def test_january_31_days
		m = Month.new(1, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_march_31_days
		m = Month.new(3, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_april_30_days
		m = Month.new(4, 1, true)
		assert_equal(30, m.numberOfDays)
	end

	def test_may_31_days
		m = Month.new(5, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_june_30_days
		m = Month.new(6, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_july_31_days
		m = Month.new(7, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_august_31_days
		m = Month.new(8, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_september_30_days
		m = Month.new(9, 1, true)
		assert_equal(30, m.numberOfDays)
	end

	def test_october_31_days
		m = Month.new(10, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_november_30_days
		m = Month.new(11, 1, true)
		assert_equal(30, m.numberOfDays)
	end

	def test_december_31_days
		m = Month.new(12, 1, true)
		assert_equal(31, m.numberOfDays)
	end

	def test_print_month_name_for_full_year_printing
		m = Month.new(1, 1, true)
		assert_equal("        January       ", m.print_name_for_full_year)
	end

	def test_print_month_name_for_individual_printing
		m = Month.new(1, 1, true)
		assert_equal("     January 2013     ", m.print_name_for_individual)
	end

end 