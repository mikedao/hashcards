require_relative 'guess'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(guess)
    new_guess = Guess.new(guess, current_card)
    guesses << new_guess
    new_guess
  end
end
