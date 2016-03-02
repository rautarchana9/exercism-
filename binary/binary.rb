class Binary
  VERSION = 1
  attr_reader :binary
  def initialize(binary)
    if binary =~ /^[01]*$/
      @binary = binary
    else
      raise ArgumentError
    end
  end

  def to_decimal
    binary.reverse.chars.each_with_index.inject(0) do |sum, digit|
      char, index = digit
      sum += char == '1'? 2 ** index : 0
    end
  end
end