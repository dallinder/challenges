# from 0 to a number 
# find mutiples of 3 and 5
# find the sum of those multiples
# default arg set to 3 and 5

class SumOfMultiples

  def initialize(arg1=3, arg2=5, *args)
    @arg1 = arg1
    @arg2 = arg2
    
  end

  def self.to(num)
    range = (1...num)
    range.select { |num| num % @arg1 == 0 || num % @arg2 == 0 }.inject(:+)
  end
end

SumOfMultiples.to(10)