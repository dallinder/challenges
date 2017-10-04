class Series
  attr_reader :string, :series_length

  def initialize(string)
    @string = string.chars.map(&:to_i)
  end

  def slices(count)
    raise ArgumentError if count > string.size
    combonations = []
    string.each_cons(count) { |c| combonations << c }
    combonations.each { |c| puts '- ' + c.join }
  end
end
