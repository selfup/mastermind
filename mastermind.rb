require "pry"
require_relative "logic"

def welcome
  "Welcome to MASTERMIND

Would you like to (p)lay, read the (i)nstructions, or (q)uit?
>"
end

puts welcome

keystroke = gets.chomp

def play_message
  "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"
end

def instructions
  "To play the game use your keyboard."
end

COLORS = ["r", "b", "g", "y"]

PLAY = [COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)]]

def cheat
  print PLAY.join
end

include Logic

if keystroke  == "p"
  puts play_message
  play
elsif keystroke == "i"
  puts instructions
elsif keystroke == "q"
  puts "You have quit the game"
end
