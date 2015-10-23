module Answer
  def answer
    @i = 0
    PLAY.map.with_index do |answer, index|
      if answer == @guess[index]
        @i += 1
      end
      @flag << @i
    end
  end
end
