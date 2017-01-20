#!/usr/bin/env ruby

class Song
  attr_accessor :name, :duration

  def initialize
    @name = "One"
    @duration = 4.35
    @artist = "u2"
    @lyrics = "..."
  end

  def lyrics
    @lyrics
  end

  def lyrics= lyrics
    @lyrics = lyrics
  end

  def to_s
    "Name: #{@name}"
  end
end
