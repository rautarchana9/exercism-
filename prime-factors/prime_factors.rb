class PrimeFactors
  def self.for(number)
    return [] if number == 1
    prime_factors = []
    while number > 1
      primes(number).each do |prime|
        if number % prime == 0
          prime_factors << prime
          number = number / prime 
        end
      end   
    end
    prime_factors
  end

  def self.primes(number)
    (2..number).to_a.select {|y| is_prime(y)}
  end

  def self.is_prime(y)
    2.upto(Math.sqrt(y).to_i) do |n|
      return false if (y % n).zero?
    end
    true
  end
end