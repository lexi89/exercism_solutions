class Hamming
  VERSION = 1

  def self.compute(a,b)
    raise ArgumentError if a.length != b.length
    distance = 0
    a = a.split("")
    b = b.split("")
    joined = a.zip b
    for i in joined
      distance += 1 if i[0] != i[1]
    end
    distance
  end
end