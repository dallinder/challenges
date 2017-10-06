# find sum of mulitples from 1 to num - 1
# default args are 3 and 5
  # find multiples of 3 OR 5
# can specify as many arguments as you want

# Approach
# create a range for 1 to the input number
# create a class method called 'to' with arg of number to go to
# when initialze, *args for as many opt args
# create .to instance method for when there are multi args

class SumOfMultiples
  def initialize(*args)
    @args = args
  end

  def self.to(limit, mult = [3, 5])
    range = (0...limit).to_a
    results = []

    range.each do |number|
      if number % mult[0] == 0 || number % mult[1] == 0
        results << number
      end
    end

    results.inject(:+)
  end

  def to(limit)
    range = (0...limit).to_a
    results = []

    @args.each do |multi|
      range.each do |number|
        if number % multi == 0 
          results << number
        end
      end
    end
    results.uniq.inject(:+)
  end
end

