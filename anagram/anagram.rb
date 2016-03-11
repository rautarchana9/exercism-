class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end
  def match(vocab)
    anagrams = vocab.select do |w|
      w.upcase.chars.sort == word.upcase.chars.sort && w.upcase != word.upcase
    end
    anagrams
  end
end
