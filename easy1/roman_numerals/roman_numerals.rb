# I = 1
# X = 5
# L = 50
# C = 100
# D = 500
# M = 1000

# 1998
# 1000 = M
# 900 = CM

# take a integer, return a roman numeral string

class Integer
  ROMANS = { 1=>'I', 2=>'II', 3=>'III', 4=>'IV', 5=>'V', 6=>'VI', 7=>'VII', 8=>'VIII', 9=>'IX', 10=>'X', 20=>'XX', 30=>'XXX', 40=>'XL', 50=>'L', 60=>'LX', 70=>'LXX', 80=>'LXX', 90=>'XC', 100=>'C', 200=>'CC', 300=>'CCC', 400=>'CD', 500=>'D', 600=>'DC', 700=>'DCC', 800=>'DCCC', 900=>'CM', 1000=>'M', 2000=>'MM', 3000=>'MMM' }
  def to_roman
    result = []
    number = self.to_s.chars.reverse
    number.each_with_index do |el, idx|
      result << el + ('0' * idx)
    end
    result.reverse!.map(&:to_i).map do |el|
      ROMANS[el]
    end.join
  end
end
