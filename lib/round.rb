class Round

  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @index = 0
  end

  def current_card
    deck.cards[@index]
  end

  def record_guess(guess)
    guesses << Guess.new(guess, current_card)
    @index += 1
  end

  def number_correct
    
  end
end
