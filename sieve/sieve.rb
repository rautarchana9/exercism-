class Sieve
  attr_accessor :array_of_numbers
  def initialize(limit)
    @array_of_numbers = (2..limit).to_a
  end 

  def primes
    @array_of_numbers.select{|num| is_prime?(num)}   
  end

  def is_prime?(num)
    return false if num <= 1
    2.upto(Math.sqrt(num).to_i)do |n|
    return false if (num % n).zero?
    end
    true
  end
end     