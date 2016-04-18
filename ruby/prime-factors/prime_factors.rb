class PrimeFactors

  def self.for n
    prime_factors = []
    divisor = 2
    test_number = n
    until divisor > test_number do
      if test_number % divisor == 0
        prime_factors << divisor
        test_number = test_number / divisor
      else
        divisor += 1
      end
    end
    return prime_factors
  end

end