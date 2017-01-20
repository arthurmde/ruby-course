
module Comparable
  def < (other)
    self <=> other == -1
  end
  end

end

class Song
  attr_accessor :name, :duration
  def initialize(name, duration)
    @name = name
    @duration = duration
  end

  include Comparable

  def <=> (song)
    if self.duration > song.duration
      return 1
    elsif self.duration == song.duration
      return 0
    else
      return -1
    end
  end
end
