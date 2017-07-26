require './lib/card'

class Guess
  attr_reader :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def response
    @guess
  end

  def correct?
    if @guess == @card.answer
       true
    else
      false
    end
  end

  def feedback
    if correct? == true
      "Correct!"
    else
      "Incorrect."
    end
  end
end
