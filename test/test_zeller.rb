require_relative '../lib/zeller'
require 'minitest/autorun'

class TestZeller < MiniTest::Unit::TestCase

  def test_method_named_zeller_gets_two_args
  	Zeller.calc(9,2013)
  end

  def test_method_may_not_receive_less_than_two_arguments
  	assert_raises ArgumentError do
      Zeller.calc(2013)
    end
  end

  # def test_method_receives_string_month
  # 	assert_equal(Zeller.calc(12,2012), Zeller.calc("December", 2012))
  # end

  def test_several_dates_1
  	assert_equal(1, Zeller.calc(12, 2013))
  end

  def test_several_dates_2
  	assert_equal(6, Zeller.calc( 3, 2013))
  end

  def test_several_dates_3
  	assert_equal(5, Zeller.calc( 3, 2012))
  end

  def test_several_dates_4
  	assert_equal(3, Zeller.calc( 3, 2011))
  end

  def test_several_dates_5
  	assert_equal(2, Zeller.calc( 1, 1900))
  end

  def test_several_dates_6
  	assert_equal(4, Zeller.calc( 1, 1800))
  end

  def test_several_dates_7
  	assert_equal(4, Zeller.calc( 3, 1899))
  end

  def test_several_dates_8
  	assert_equal(5, Zeller.calc( 3, 1900))
  end

  def test_several_dates_9
    assert_equal(5, Zeller.calc( 3, 1900))
  end

  def test_several_dates_10
    assert_equal(0, Zeller.calc( 3, 1800))
  end

  def test_year_out_of_range_high
  	assert_raises ArgumentError do 
      Zeller.calc(10,3001)
    end
  end

  def test_year_out_of_range_low
    assert_raises ArgumentError do 
      Zeller.calc(10,1799)
    end
  end

end

