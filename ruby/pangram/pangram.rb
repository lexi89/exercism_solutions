class Pangram
VERSION = 1

  def self.is_pangram? str
    str.downcase.scan(/[a-z]/).uniq.count == 26
  end
end
