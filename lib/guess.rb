require './lib/card'

class Guess

  attr_reader :card

  def initialize(attempt, card)
    @attempt = attempt
    @card = card
  end

  def correct?
    @card == card.question
  end

  def feedback
    if correct? == false
      "Incorrect."
    end
  end
end
