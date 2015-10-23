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

  def keystroke
    gets.chomp
  end

  def play_message
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def instructions
    "To play the game use your keyboard."
  end

  def welcome
    "Welcome to MASTERMIND

  Would you like to (p)lay, read the (i)nstructions, or (q)uit?
  >"
  end
end
