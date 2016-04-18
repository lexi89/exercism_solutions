class Robot

  def initialize
    reset
  end

  def reset
    letterset = Array("A".."Z")
    numberset = Array(1..9)
    rand_letters = [ letterset.sample, letterset.sample ]
    rand_numbers = [ numberset.sample, numberset.sample, numberset.sample ]
    @name = (rand_letters + rand_numbers).join
  end

  def name
    @name
  end
end