require_relative 'input_output'
require_relative 'play'
include InputOutput
include Answer

puts welcome

COLORS = ["r", "b", "g", "y"]

PLAY = [COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)], COLORS[rand(0..3)]]

def cheat
  print PLAY.join
end

if keystroke  == "p"
  puts play_message
  Play.play
elsif keystroke == "i"
  puts instructions
elsif keystroke == "q"
  puts "You have quit the game"
end
