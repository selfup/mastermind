module Logic
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
    binding.pry
  end
end
