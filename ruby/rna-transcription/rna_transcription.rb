class Complement
  VERSION = 3

  def self.of_dna(a)
    raise ArgumentError if a =~ /[^ATGC]/
    dna = ""
    pairings = {"C" => "G",
                "G" => "C",
                "T" => "A",
                "A" => "U" }
    a.chars.each do |i|i
      dna << pairings[i]
    end
    return dna
  end
end