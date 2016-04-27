class String
  def is_number?
    !!self.match(/\d/)
  end
end

class RunLengthEncoding
VERSION = 1

  def self.encode input
    encoded_arr = input.chars.inject ([]) do |memo, i|
      memo.last && i == memo.last.last ? memo.last[0] += 1 : memo << [1, i]
      memo
    end

    encoded_output = encoded_arr.each.inject("") do |memo, i|
      i[0] == 1 ? memo << i[1] : memo << i.join
    end
  end

  def self.decode input
    decoded_arr = input.chars.inject([]) do |memo, i|
      if i.is_number?
        memo.last && memo.last.last.is_number? ? memo.last[0] += i : memo << [i]
      else
        memo.last && memo.last.last.is_number? ? memo.last << i : memo << [1, i]
      end
      memo
    end

    decoded = decoded_arr.each.inject("") do |memo, i|
      memo << i[1]*i[0].to_i
    end
  end
end
