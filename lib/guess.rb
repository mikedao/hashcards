require "./lib/card"

class Guess
  attr_reader :card, :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    @response == @card.answer
  end

  def feedback
    ("Correct" if correct?) || "Incorrect."
  end
end
