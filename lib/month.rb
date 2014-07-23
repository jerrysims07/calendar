class Month

  attr_accessor :month

  def initialize (month, first_day, leap)
    @month = month
    @first_day = first_day
    @leap = leap
  end

  def length
    case @month
    when 1,3,5,7,8,10,12
      31
    when 4,6,9,11
      30
    when 2
      if @leap
        29
      else
        28
      end
    end
  end

  def print_name_for_full_year
    month_name.center(20)
  end

  def month_name
    case @month
    when 1
      "January"
    when 2
      "February"
    when 3
      "March"
    when 4
      "April"
    when 5
      "May"
    when 6
      "June"
    when 7
      "July"
    when 8
      "August"
    when 9
      "September"
    when 10
      "October"
    when 11
      "November"
    when 12
      "December"
    end
  end

  def print_day_labels
    "Su Mo Tu We Th Fr Sa"
  end

  def weeks
    weeks = []
    unless @first_day == 0
      current_day = 1 - (@first_day-1)
    else
      current_day = 1 - (7-1)
    end
    6.times do |week_num|
      weeks[week_num] = ""
      7.times do
        if current_day < 1
          weeks[week_num] << "".center(3)
        elsif current_day > length
        else
          weeks[week_num] << current_day.to_s.rjust(3)
        end
        current_day += 1
      end
      weeks[week_num].slice!(0,1)
    end
    weeks
  end

  def print_name_for_individual
    (month_name + "     ").center(20).rstrip + " "
  end

private
  def leading_blanks
    unless @first_day == 0
      "".center(((@first_day-1)*3)-1)
    else
      "".center((6*3)-1)
    end
  end

end
