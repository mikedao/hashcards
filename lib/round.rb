class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
  end

  def number_correct
    @guesses.count {|guess| guess.correct?}
  end
end
