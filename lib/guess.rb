class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card     = card
  end

  def correct?
    true if response == card.answer
  end

  def feedback
    if correct?
      "Correct"
    else
      "Wrong!"
    end
  end
end
