require "test_helper"

class KataBootstrapRubyTest < Test::Unit::TestCase
  CASES = {
    1 => "I", 2 => "II", 3 => "III",
    4 => "IV", 5 => "V",
    9 => "IX", 10 => "X",
    49 => "IL", 90 => "XC", 110 => "CX",
    475 => "CDLXXIV", 500 => "D",
    879 => "DCCCLXXIX", 979 => "CMLXXIX",
    1984 => "MCMLXXXIV"
  }

  CASES.each_pair do |integer, numeral|
    define_method "test_#{integer}" do
      assert_equal numeral, integer.to_roman
    end
  end
end
