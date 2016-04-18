class Array

  def keep(&block)
    keep = []
    self.each {|n| keep << n if block.call(n) == true}
    return keep
  end

  def discard(&block)
    discard = []
    self.each {|n| discard << n if block.call(n) == false}
    return discard
  end

end