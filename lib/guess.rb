class Guess 

  def initialize(guess, card)
    @guess = guess
    @card = Card.new(@c_hash)
  end

  def card
    @card
  end

  def response
    @guess
  end

  def correct?
    if @guess == @card.c_hash.values[1]
      return true
    else
      return false
    end
  end

 
end


