# find the divisors of a given number
  # make a range of numbers in an array from 2 to give number
  # iterate through range
# find the sum of those numbers
  # if sum == given number
    # 'perfect'
  # if sum > givem number
    # 'abundant'
  # if sum < given number or given number is prime
    # 'deficient' 

class PerfectNumber

  def self.classify(given_num)
    arr = (1..given_num).to_a
    results = []
    raise RuntimeError if given_num < 0

    arr.combination(2).to_a.select do |set|
      (results << set) if set.inject(:*) == given_num
    end
    results.flatten!.delete(given_num)

    classification(results.inject(:+), given_num)
  end

  def self.classification(a, b)
    if a == b
      'perfect'
    elsif a > b
      'abundant'
    else
      'deficient'
    end
  end

  private_class_method :classification
end
