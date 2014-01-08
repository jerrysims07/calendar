require 'minitest/autorun'

class TestCalendar < MiniTest::Unit::TestCase

	def test_month_with_4_lines
		shell_output = `ruby cal.rb 2 2015`
		expected_output = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
	assert_equal(expected_output, shell_output)
	end

	def test_full_year_leap
		shell_output = `ruby cal.rb 2012`
		expected_output = <<EOS
                             2012

      January               February               March
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7            1  2  3  4               1  2  3
 8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10
15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17
22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24
29 30 31              26 27 28 29           25 26 27 28 29 30 31
                                            
       April                  May                   June
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7         1  2  3  4  5                  1  2
 8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9
15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16
22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23
29 30                 27 28 29 30 31        24 25 26 27 28 29 30
                                            
        July                 August              September
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7            1  2  3  4                     1
 8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8
15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15
22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22
29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29
                                            30
      October               November              December
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6               1  2  3                     1
 7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8
14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15
21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22
28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29
                                            30 31
EOS
		assert_equal(expected_output, shell_output)
	end

	def test_overall_individual_month
		assert_equal(`cal 2 2012`, `ruby cal.rb 2 2012` )
	end

	def test_overall_individual_month_2
		assert_equal(`cal 3 2012`, `ruby cal.rb 3 2012` )
	end

	def test_overall_individual_month_3
		assert_equal(`cal 1 1800`, `ruby cal.rb 1 1800`)
	end

	def test_overall_individual_month_4
		assert_equal( `cal 3 2999`, `ruby cal.rb 3 2999`)
	end

	def test_overall_individual_month_5
		assert_equal(`cal 2 1900`, `ruby cal.rb 2 1900`)
	end

	def test_overall_individual_month_6
		assert_equal(`cal 3 1900`, `ruby cal.rb 3 1900`)
	end

	def test_overall_individual_month_7
		assert_equal(`cal 2 2000`, `ruby cal.rb 2 2000`)
	end

	def test_overall_individual_month_7
		assert_equal(`cal 3 2000`,`ruby cal.rb 3 2000`)
	end

	def test_the_big_test
		assert_equal(`cal 2012`, `ruby cal.rb 2012`)
	end

	def test_the_big_test
		assert_equal(`cal 1900`, `ruby cal.rb 1900`)
	end

	def test_the_big_test
		assert_equal(`cal 2000`, `ruby cal.rb 2000`)
	end

	def test_the_big_test
		assert_equal(`cal 1899`, `ruby cal.rb 1899`)
	end

	def test_the_big_test
		assert_equal(`cal 3000`, `ruby cal.rb 3000`)
	end

	def test_the_big_test
		assert_equal(`cal 2014`, `ruby cal.rb 2014` )
	end

	def test_2011
		assert_equal(`cal 2011`, `ruby cal.rb 2011`)
	end

	def test_7_2011
		assert_equal(`cal 7 2011`, `ruby cal.rb 7 2011`)
	end

end
