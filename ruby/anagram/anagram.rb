class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select do |w|
      next if w.downcase == word
      w.downcase.chars.sort == word.chars.sort
    end
  end
end
