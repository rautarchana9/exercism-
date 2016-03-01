class Phrase
  attr_reader :string 
  VERSION = 1
  def initialize(string)
    @string = string
  end
  
  def words_from_string 
    string.downcase.scan(/[\w']+/)
  end
  
  def word_count 
    counts = Hash.new(0)
    for word in words_from_string
      counts[word.gsub(%r{^\s*'|'\s*$}, '')] += 1
    end
    counts
  end
end
