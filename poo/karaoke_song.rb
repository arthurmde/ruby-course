#!/usr/bin/env ruby

class KaraokeSong < Song
end

karaoke_song = KaraokeSong.new
song = Song.new

class Song
  def my_public_method
    puts "public method"
  end

  protected
  def my_protected_method
    puts "protected method"
  end

  private
  def my_private_method
    puts "private method"
  end
end
