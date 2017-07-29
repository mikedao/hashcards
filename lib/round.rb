require_relative "guess"

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    count = guesses.count
    current_card = deck.cards[count]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
  end

  def number_correct
    correct = []
    guesses.map {|guess| correct << guess.response if guess.correct?}
    correct.count
  end
end
