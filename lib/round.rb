require_relative "guess"

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    current_card = @deck.cards.first
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
  end
end
