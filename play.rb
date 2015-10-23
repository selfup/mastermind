require_relative 'logic'

class Play
include Logic

  attr_reader :guess, :flag

  def initialize
    @guess = keystroke
    @flag = []
  end

  def self.play
    guess = @guess.chars

    answer

    if guess == "c"
      print "#{cheat}\n"
      play
    elsif
      @guess.length < 4
      puts "Your guess is too short!"
      play
    elsif @guess.length > 4
      puts "Your guess is too long!"
      play
    elsif @flag.reduce(:+) < 4
      puts "#{@guess.join} has #{@flag.reduce(:+)} colors correct"
      puts "Try again!"
      play
    elsif @flag.reduce(:+) >= 4
      puts "You win!"
    end
  end

end
