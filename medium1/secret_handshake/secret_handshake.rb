class SecretHandshake
  COMMANDS = { 0=>'wink', 1=>'double blink', 2=>'close your eyes', 3=>'jump' }

  def initialize(number)
    @number = number
  end

  def commands
    # use @number.
    # if integer then convert to binary, refer to hash
    # if string, check if valid binary, refer to hash
    result = []

    if @number.class == Integer
      to_binary.chars.each_index do |idx|
        if @number[idx] == 1
          result << COMMANDS[idx]
        end
      end
    else
      return [] if @number.to_i == 0
      @number.chars.each_index { |idx| result << COMMANDS[idx] }
    end

    if result.include?(nil)
      result.compact.reverse
    else
      result.compact
    end
  end

  private

  def to_binary
    if @number > 0
      @number.to_s(2)
    else
      0
    end
  end
end

some = SecretHandshake.new(19)
p some.commands
