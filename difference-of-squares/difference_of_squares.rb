class Squares
  VERSION = 2
  attr_reader :number
  def initialize(number)
    @number = number 
  end
  def square_of_sum
    result = (0..number).inject {|sum, n| sum + n }
    result * result
  end
  def sum_of_squares
    (0..number).map{ |x| x**2}.inject(0, &:+) 
  end
  def difference
    square_of_sum - sum_of_squares
  end
end
