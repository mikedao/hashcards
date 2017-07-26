class Round
  attr_reader :deck, :guesses, :active_card
  def initialize(deck)
    @deck = deck
    @guesses = []
    @active_card = guesses.count
  end

  def current_card
    deck.cards[active_card]
  end

  def record_guess
    guess= Guess.new(response, card)
    #add to guess array
    @guesses << guess
    guess
  end
end
