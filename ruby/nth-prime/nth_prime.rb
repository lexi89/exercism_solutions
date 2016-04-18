class Prime

  def nth n
    raise ArgumentError if n == 0
    primes = []
    i = 1
      until primes.count == (n+1) do
        primes << i if is_prime?(i)
        i += 1
      end
    return primes.last
  end

  private

  def is_prime? number
    return true if number == 1 || number == 2 || number == 3
    for j in (2..(Math.sqrt(number).to_i + 1)) # to know if a number is prime, you only need to check if it's divisible by the numbers up to its square root
      return false if number % j == 0
      return true if j > (Math.sqrt(number).to_i) # if we're trying to divide the number by something greater than its square root, that means it's prime.
    end
  end

end