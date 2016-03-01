class Prime
  def self.nth(count)
    raise ArgumentError if count < 1
    array_of_primes = (2..104750).to_a.select {|y| Prime.is_prime(y)}
    array_of_primes[count-1]
  end 
  def self.is_prime(y)
    return false if y <= 1
    2.upto(Math.sqrt(y).to_i)do |n|
      return false if (y % n).zero?
    end
    true
  end
end
p Prime.nth(10001)

