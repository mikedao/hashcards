class Round
  attr_reader :deck, :current_card, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end
end
