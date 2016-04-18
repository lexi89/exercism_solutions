class Sieve

  def initialize limit
    @marked = []
    @primes = []
    @limit = limit
    primes
  end

  def primes
    for p in (2..@limit)
      @primes << p unless @marked.include?(p) || @primes.include?(p)
      sieve p
    end
    return @primes
  end

  def sieve p
    multiplier = 2
    test_value = 0
    until test_value >= @limit do
      test_value = multiplier * p
      break if test_value > @limit
      @marked << test_value unless @marked.include?(test_value)
      multiplier += 1
    end
  end

end