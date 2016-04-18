class PhoneNumber

  BAD_NUMBER = "0000000000"

  def initialize number
    @number = number
  end

  def number
    @number = @number.gsub(/\W/i, "")
    if number_is_bad?
      return BAD_NUMBER
    else
      @number = @number[1..-1] if @number.start_with?("1") && @number.length == 11
      return @number
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    @number = @number[1..-1] if @number.length == 11
    return "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
  end

  private

  def number_is_bad?
    if !@number.scan(/[a-z]/i).empty? || @number.length < 10 || @number.length > 11 || (!@number.start_with?("1") && @number.length >= 11)
      return true
    else
      return false
    end
  end

end