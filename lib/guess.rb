require_relative 'card'

class Guess
  attr_reader :response,
              :card

  def initialize(response, instance)
    @response = response
    @card     = instance
  end

  def feedback
    if correct?
      return "Correct!"
    else
      return "Incorrect."
    end
  end

  def correct?
    return true unless @response != @card.answer
    return false unless @response == @card.answer
  end
end
