class SumOfMultiples

  def initialize *args
    @args = args
  end

  def self.to n
    return 0 if n == 1
    (1...n).select {|n| n % 3 == 0 || n % 5 == 0}.reduce(:+)
  end

  def to n
    multiples = []
    @args.each do |arg|
      multiples << (1...n).select {|i| i % arg == 0}
    end
    multiples.flatten.uniq.reduce(:+)
  end

end