class PigLatin
  VOWELS = ['a', 'e', 'i', 'o', 'u', 'y']

  def self.translate(string)
    if checker(string)
      string + 'ay'
    else
      string[1..-1] + string[0] + 'ay'
    end
  end

  def self.checker(string)
    VOWELS.include?(string[0])
  end
end