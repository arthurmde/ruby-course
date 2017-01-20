
module BluesTune
  attr_accessor :treble, :bass
  def tuning
    @bass = 300.0
    @treble = 440.0
  end
end

class Guitar
  include BluesTune
  def initialize
    tuning
    puts "Bass: #{@bass}"
    puts "Treble: #{@treble}"
  end
end

Guitar.new
