class School
  VERSION = 1
  def initialize
    @school = {}
  end

  def add (name, grade)
    if @school[grade]
      @school[grade] << name
    else
      @school[grade] = [name]
    end
  end

  def grade n
    return [] if @school[n] == nil
    @school[n].sort
  end

  def to_h
    @school.each_value {|names| names.sort!}
    @school.sort_by {|k,v| k}.to_h
  end

end