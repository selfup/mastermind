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

if keystroke  == "p"
  puts play_message
elsif keystroke == "i"
  puts instructions
elsif keystroke == "c"
  print "#{cheat}\n"
else
  puts "You have quit the game"
end

guess = gets.chomp

@guess = guess.chars
@flag = []

def answer
  @i = 0
  PLAY.map.with_index do |answer, index|
    if answer == @guess[index]
      @i += 1
    end
    @flag << @i
  end
end

def play(guess = @guess)
  if guess.length < 4
    puts "Your guess is too short!"
    play
  elsif guess.length > 4
    puts "Your guess is too long!"
    play
  elsif @flag.join.to_i < 4
    puts "Not yet!"
    play
  elsif @flag.join.to_i == 4
    puts "You win!"
  end
end

play
