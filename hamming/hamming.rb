class Hamming
  VERSION = 1
  def self.compute(string1, string2)
    first, second = string1.chars, string2.chars
    if first.length < second.length
      raise ArgumentError
    else 
      if first.length > second.length
        raise ArgumentError
      end
    end
    first.zip(second).count {|pair| pair[0] != pair[1]}
  end
end
