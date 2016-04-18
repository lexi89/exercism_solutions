class Squares
  VERSION = 2
  def initialize(number)
    @numbers = (1..number).to_a
  end

  def square_of_sum
    sum = 0
    @numbers.each { |n| sum += n }
    sum**2
  end

  def sum_of_squares
    sum_of_squares = 0
    @numbers.each { |n| sum_of_squares += (n**2) }
    sum_of_squares
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end
end