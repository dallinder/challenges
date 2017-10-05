
class Sieve
  attr_reader :range

  def initialize(limit)
    @range = (2..limit).to_a
  end

  def primes
    result = []
    while (number = range.delete_at(0))
      result << number
      range.delete_if { |n| (n % number).zero? }
    end
    result
  end
end

sieve = Sieve.new(100)

p sieve.primes

# set up a result empty array
# use a while loop (break if number = range.delete_at(0) is nil)
# first add number to the result array
# delete all numbers from the range that % number == 0
# go back to the range array and get the next number until the range array.delete_at(0) returns nil to break the loop
