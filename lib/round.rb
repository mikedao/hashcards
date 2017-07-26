class Round

  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    deck.cards.first
  end

  def record_guess(guess)
    guesses << Guess.new(guess, current_card)
  end
end
