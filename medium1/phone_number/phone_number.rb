# take a string and output a string
# 'number' should return a string with only numbers
# invalid number return 10 0's
# numbers < 10 are invalid
# numbers == 10 are valid
# if the numbers == 11, then only valid if first number is 1
  #use only the numbers after the 1
# if numbers > 11, invalid

class PhoneNumber
  attr_reader :number

  def initialize(number)
    if number =~ /[a-z]/i
      @number = '0000000000'
    else
      number = number.delete '^0123456789'
      number_transformation(number)
    end
  end

  def number_transformation(number)
    if number.size == 11 && number[0] == '1'
      @number = number[1..-1]
    elsif number.size > 10
      @number = '0000000000'
    elsif number.size < 10
      @number = '0000000000'
    else
      @number = number
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end


