class Array

  def accumulate(&operation)
    result = []
    self.each do |i|
      result << operation.call(i)
    end
    return result
  end
end