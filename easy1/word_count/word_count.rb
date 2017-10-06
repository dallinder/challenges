# count the words, return a hash
# words are keys and the running count is the value
# ignore puncuation - do not include that in return
# include numbers
# normalize case (make downcase)
# include apostrophes with a word
# words with quotes and without are the same ('large' and large)
require 'pry'
class Phrase
  attr_reader :words

  def initialize(words)
    if words.include?(',')
      @words = words.downcase.gsub!(',', ' ').split
    else
      @words = words.downcase.split
    end
  end

  def word_count
    results = Hash.new(0)
    
    words.each do |word|

      word.gsub!(/[^a-z1-9']/i, '')
      next if word == ''
      word.delete!("'") if word.count("'") == 2

      results[word] += 1
    end

    results
  end
end

# need to handle cramped lists ('one,two,three')
