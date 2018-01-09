class Octal
  def initialize(num_string)
    return nil if /[[:alpha:]]/ =~ num_string
    @num_array = num_string.chars.reverse.map(&:to_i)
  end

  def invalid_octal(num_array)
    num_array == nil || num_array.any? { |num| num >= 8 }
  end

  def to_decimal
    return 0 if invalid_octal(@num_array)

    @num_array.each_with_index.map do |num, index|
      num * (8 ** index)
    end.inject(:+)
  end
end
