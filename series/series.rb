class Series
  def initialize(numeric_string)
    @digits = convert_to_digits(numeric_string)
  end

  def slices(length)
    if length > digits.length
      fail ArgumentError.new('Not enough digits')
    end
    result = []
    l = digits.length - length
    digits[0..l].each_index.map do |index|
    result << digits[index..index+length - 1]    
    end
    result
  end

  private

  attr_reader :digits

  def convert_to_digits(s)
    s.chars.map(&:to_i)
  end
end
