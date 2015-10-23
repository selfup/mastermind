require_relative 'answer'

class Play
include Answer

  def self.play
    guess = gets.chomp
    @guess = guess.chars
    @flag = []
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
