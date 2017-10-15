class School
	attr_reader :roster

	def initialize
		@roster = Hash.new
	end

	def to_h
		roster.sort.to_h.each_value { |value| value.sort! }
	end

	def add(name, grade)
		if roster.include?(grade)
			roster[grade] << name
		else
			roster[grade] = [name]
		end
	end

	def grade(grade_level)
		return [] if roster[grade_level] == nil
		roster[grade_level]
	end
end

