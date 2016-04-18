class Phrase
  VERSION = 1
  def initialize phrase
    @words = phrase.downcase.gsub(/[^a-z0-9\'\s]/i, ' ').split(" ")
    @words = @words.each do |w|
      w.slice!(0) if w.start_with?("\'")
      w.slice!(-1) if w.end_with?("\'")
    end
    word_count
  end

  def word_count
    Hash[ @words.each.map { |word| [word, @words.count(word)]} ]
  end

end