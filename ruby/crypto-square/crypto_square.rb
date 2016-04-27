class Crypto

  def initialize input
    @input = input
    normalize_plaintext
  end

  def normalize_plaintext
    @input = @input.scan(/[a-z0-9]/i).join.downcase
  end

  def size
    Math.sqrt(@input.length).ceil
  end

  def plaintext_segments
    @input.scan(/.{1,#{self.size}}/)
  end

  def ciphertext
    ciphertext_arr = []
      for i in 0...self.size
        new_word = []
        self.plaintext_segments.each do |word|
          new_word << word[i]
        end
        ciphertext_arr << new_word.join
      end
      if block_given? # send ciphertext to be normalized
        yield ciphertext_arr
      else
        ciphertext_arr.join # show full ciphertext
      end
  end

  def normalize_ciphertext
    normalized = ""
    ciphertext do |ciphertext_arr|
      ciphertext_arr.each do |word|
        normalized << " #{word}"
      end
      p normalized.lstrip
      p normalized.delete(' ')
    end
  end
end

crypto = Crypto.new('Have a nice day. Feed the dog & chill out!')
crypto.normalize_ciphertext
