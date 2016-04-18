class Series

  def initialize numbers
    @series = numbers.split("").map!{|i| i.to_i}
  end

  def slices n
    raise ArgumentError if n > @series.length
    slices = []
    for i in (0..(@series.length - n))
      slices << @series[i...(i+n)]
    end
    slices
  end
end