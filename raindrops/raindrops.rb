require 'prime'
class Raindrops
    VERSION = 1
    OPTIONS = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    def self.convert(number)
      result = find_prime_factors(number).map {|prime| OPTIONS[prime]}.join
      if result.empty? 
        result = number.to_s
      end
      result
    end

    def self.find_prime_factors(number)
      number.prime_division.map(&:first)
    end
end



