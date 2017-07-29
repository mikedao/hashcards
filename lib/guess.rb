require_relative "card"

class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def feedback
    ("Correct" if @response == @card.answer) || "Incorrect"
  end

  def correct?
    true if @response == @card.answer
  end

end
