class Pangram
VERSION = 1

  def self.is_pangram? str
    str.downcase.chars.uniq.select {|x| x =~ /[a-z]/}.count == 26
  end
end
