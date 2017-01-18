class RomanNumber

  attr_reader :numeral

  MAP = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100
  }

  def initialize(numeral)
    @numeral = numeral
  end

  def to_decimal
    output = 0
    arr = numeral.split("")

    arr.each_with_index do |char, i|
      if arr[i+1] && MAP[char] < MAP[arr[i+1]]
        output -= MAP[char]
      else
        output += MAP[char]
      end
    end
    output
  end
end