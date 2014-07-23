class Year

  attr_reader :year

  def initialize year
    @year = year.to_i
  end

  def is_leap_year?
    return true if @year % 4 == 0 && @year % 100 != 0
    return true if @year % 400 == 0
    return false
  end

  def print_year_label
    @year.to_s.center(63).rstrip + "\n"
  end

  def day_labels
    "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"
  end

  def print
    @months = generate_months
    print_year
  end

  def print_year
    result = ""
    result << print_year_label << "\n"
    4.times do |i|
      result << print_quarter(i)
    end
    puts result
  end

  def print_quarter q
    addition = ""
    result = ""
    result << name_labels(q)
    result = clean_up result
    result << day_labels
    result << weeks(q)
    result
  end

  def weeks(q)
    addition = ""
    result = ""
    6.times do |week_num|
      3.times do |i|
        addition = @months[i+(q*3)].weeks[week_num].ljust(20) << "  "
        result << addition
      end
      if addition.rstrip == ""
        result.rstrip! << "\n\n"
      else
        result = clean_up result
      end
    end
    result
  end

  def name_labels q
    result = ""
    3.times do |i|
      result << @months[i+(q*3)].print_name_for_full_year << "  "
    end
    result
  end

  def generate_months
    months = []
    12.times do |i|
      months[i] = Month.new((i+1), Zeller.calc((i+1), @year), is_leap_year?)
    end
    months
  end

  def clean_up result
    result.rstrip! << "\n"
    result
  end

end
