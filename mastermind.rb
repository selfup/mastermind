require 'pry'

puts "Welcome to MASTERMIND

Would you like to (p)lay, read the (i)nstructions, or (q)uit?
>"

keystroke = gets.chomp

def play_message
  "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"
end

def instructions
  "To play the game use your keyboard."
end

if keystroke  == "p"
  puts play_message
elsif keystroke == "i"
  puts instructions
else
  raise "You have quit the game"
end
