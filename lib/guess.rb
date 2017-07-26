class Guess
  attr_reader :card, :guess, :response

  def initialize(guess, card)
    @guess = guess
    @card = card
    @response = guess
  end

  def feedback
    @card.answer == @guess ? "Correct" : "Incorrect"
  end

  def correct?
    feedback == "Correct"
  end

end
