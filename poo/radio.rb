#!/usr/bin/env ruby

class Radio
  def initialize
    @name = "Kiss FM"
    @station = 102.3
    @songs = []
  end

  def play(song_name)
    if @songs.include? song_name
      puts "Playing the song #{song_name}"
    else
      puts "The song #{song_name} is not available"
    end
  end
end
