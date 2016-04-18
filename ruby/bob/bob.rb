class Bob
  LETTERS = /[a-z]+/i

  def hey remark
    return 'Whoa, chill out!' if remark =~ LETTERS && remark[LETTERS] == remark[LETTERS].upcase
    return 'Sure.' if remark.end_with?("\?")
    return 'Fine. Be that way!' if remark.strip == ""
    return 'Whatever.'
  end

end