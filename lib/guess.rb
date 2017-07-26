require_relative "card"

class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = Card.new({})
  end

  def feedback
    p "Correct" if @response == @card.answer
  end

  def correct?
    true if @response == @card.answer
  end

end
