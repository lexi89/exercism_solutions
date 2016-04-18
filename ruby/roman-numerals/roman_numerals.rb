class Fixnum
  VERSION = 1
  def to_roman
    def numeral_logic(factor_count, upper, middle, single)
      if factor_count == 9
        "#{single}#{upper}"
      elsif factor_count > 5
        "#{middle}" + "#{single}" * (factor_count - 5)
      elsif factor_count == 5
        "#{middle}"
      elsif factor_count == 4
        "#{single}#{middle}"
      else
        "#{single}" * factor_count
      end
    end
    roman = ""
    thousands = self / 1000
    hundreds = self % 1000 / 100
    tens = self % 1000 % 100 / 10
    ones = self % 1000 % 100 % 10
    roman << numeral_logic(thousands, "T", "E", "M") if thousands
    roman << numeral_logic(hundreds, "M", "D", "C") if hundreds
    roman << numeral_logic(tens, "C", "L", "X") if tens
    roman << numeral_logic(ones, "X", "V", "I") if ones
    return roman
  end
end