
class Anagram
  def initialize(word)
    @word = word.chars.map(&:downcase)
  end

  def match(array_of_words)
    result = []
    testing_array = array_of_words.map { |words| words.chars }
    testing_array.each do |tst_word|

      next if tst_word.map(&:downcase) == @word
      if tst_word.map(&:downcase).sort == @word.sort
        result << tst_word
      end
    end
    result.map(&:join)
  end
end
