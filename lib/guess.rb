class Guess

  attr_reader :response,
              :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    return true if @response == card.answer
    return false if @response != card.answer
  end

  def feedback
    return "Correct!" if @response == card.answer
    return "Incorrect." if @response != card.answer
  end

end
