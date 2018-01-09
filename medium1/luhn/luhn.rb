class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    number = @number.to_s.chars.reverse.map(&:to_i)
    number = number.each_with_index.map do |num, index|
      index.odd? ? num*2 : num
    end

    number.map { |num| num > 9 ? num-9 : num }.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    new_base_num = number * 10
    if Luhn.new(new_base_num).valid?
      new_base_num
    else
      remainder = Luhn.new(new_base_num).checksum % 10
      new_base_num + (10 - remainder)
    end
  end
end

p Luhn.create(873_956)
