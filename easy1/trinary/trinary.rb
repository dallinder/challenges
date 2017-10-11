class Trinary
  attr_reader :trinary_num_string
  
  def initialize(trinary_num_string)
    @trinary_num_string = trinary_num_string
  end
  
  def to_decimal
    return 0 if trinary_num_string =~ /[^0-2]/i
    array = trinary_num_string.chars.map! { |num| num.to_i }.reverse
    index = 0
    results = []
  
    loop do
      results << array[index] * (3**index)
      index += 1
      break if index == array.size
    end
    results.inject(:+)
  end
end

some = Trinary.new('121').to_decimal
