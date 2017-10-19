class Scrabble
	attr_reader :letters

	SCORING = { 1=>%w(A E I O U L N R S T),
							2=>%w(D G),
							3=>%w(B C M P),
							4=>%w(F H V W Y),
							5=>%w(K),
							8=>%w(J X),
							10=>%w(Q Z)}

	def initialize(letters)
		@letters = letters
	end

	def score
		return 0 if letters == nil
		final_score = []
		letters.each_char do |char|
			SCORING.each_key do |point|
				if SCORING[point].include?(char.upcase)
					final_score << point
				end
			end
		end
			return 0 if final_score.empty?
			final_score.inject(:+)
	end

	def self.score(word)
		return 0 if word == nil
		final_score = []
		word.each_char do |char|
			SCORING.each_key do |point|
				if SCORING[point].include?(char.upcase)
					final_score << point
				end
			end
		end
		return 0 if final_score.empty?
		final_score.inject(:+)
	end
end
