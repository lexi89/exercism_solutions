class Raindrops
  VERSION = 1

  def self.convert(number)
    string = ""
    string << "Pling" if number % 3 == 0
    string << "Plang" if number % 5 == 0
    string << "Plong" if number % 7 == 0
    return number.to_s if string.empty?
    return string
  end
end