class Binary
  VERSION = 1
  attr_accessor :n

  def initialize n
    raise ArgumentError if !n.scan(/[^10]/).empty?
    @n = n
  end

  def to_decimal
    decimal = "".to_f
    n.split("").reverse.each_with_index do |number, index|
      decimal += number.to_i*2**(index)
    end
    return decimal
  end

end