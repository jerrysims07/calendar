# require_relative 'helper'
require_relative 'zeller.rb'
require 'minitest/autorun'


class TestZeller < MiniTest::Unit::TestCase

  def test_method_named_zeller_gets_two_args
  	Zeller.calc(9,2013)
  end

  def test_method_may_not_receive_less_than_two_arguments
  	assert_equal(ArgumentError, Zeller.calc(2013))
  end

  def test_method_receives_string_month
  	assert_equal(Zeller.calc(12,2012), Zeller.calc("December", 2012))
  end

  def test_several_dates
  	assert_equal(1, Zeller.calc(12, 2013))
  	assert_equal(6, Zeller.calc( 3, 2013))
  	assert_equal(5, Zeller.calc( 3, 2012))
  	assert_equal(3, Zeller.calc( 3, 2011))
  	assert_equal(2, Zeller.calc( 1, 1900))
  	assert_equal(4, Zeller.calc( 1, 1800))
  	assert_equal(4, Zeller.calc( 3, 1899))
  	assert_equal(5, Zeller.calc( 3, 1900))
  end

  def test_year_out_of_range
  	assert_equal(ArgumentError, Zeller.calc(10,3001))
  	assert_equal(ArgumentError, Zeller.calc(10,1450))
  end

end