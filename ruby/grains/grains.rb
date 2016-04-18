class Grains

  def self.square n
    @running_count = 1
    (2..n).each do |i|
      @running_count = @running_count*2
    end
    @running_count
  end

  def self.total
    (1..64).inject(0) { |sum, i| sum += square(i)}
  end

end