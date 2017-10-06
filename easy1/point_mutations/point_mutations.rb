# compare each letter in 2 strings
# if the string is different, add 1 to the count
# return the count

# stop comparing when the shorter one runs out of letters

class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    count = 0
    index = 0
    return 0 if strand.empty? || other_strand.empty?

    loop do
      if strand[index] != other_strand[index]
        count += 1
      end
      index += 1
      break if index == strand.size
      break if strand[index].nil? || other_strand[index].nil?
    end

    count
  end
end

