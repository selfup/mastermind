require "pry"

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

def answer
  @i = 0
  PLAY.map.with_index do |answer, index|
    if answer == @guess[index]
      @i += 1
    end
    @flag << @i
  end
end

def play
  guess = gets.chomp

  @guess = guess.chars

  @flag = []
  answer

  if @guess.length < 4
    puts "Your guess is too short!"
    play
  elsif @guess.length > 4
    puts "Your guess is too long!"
    play
  elsif @flag.reduce(:+) < 4
    puts "You got #{@flag.reduce(:+)} colors correct"
    play
  elsif @flag.reduce(:+) == 4
    puts "You win!"
  end
end

if keystroke  == "p"
  puts play_message
  play
elsif keystroke == "i"
  puts instructions
elsif keystroke == "c"
  print "#{cheat}\n"
else
  puts "You have quit the game"
end
