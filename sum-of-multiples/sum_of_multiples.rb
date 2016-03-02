class SumOfMultiples

  def self.to(number)
    new(3, 5).to(number)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    (0...number).select{ |n| multiple? (n)}.inject(0, &:+)
  end

  def multiple?(number)
    @multiples.any? {|multiple| number % multiple == 0}
  end

end