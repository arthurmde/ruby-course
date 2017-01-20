#!/usr/bin/env ruby

require 'rubygems'
require 'powerpack'

puts "="*100, "All available colors:".upcase.bold, String.colors
puts "="*100, "All available modes:".upcase.bold, String.modes

puts "="*100, "Some examples:".upcase.bold
puts "Blue text".blue
puts "Red underline text".red.underline
puts "Green bold text".green.bold
