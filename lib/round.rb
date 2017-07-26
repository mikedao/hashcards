require 'pry'
class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @response = nil
    @guesses = []
    @response = nil
  end

  def current_card
    @deck.cards[guesses.count]
  end

  def record_guess(user_guess)
    guess = Guess.new(user_guess, current_card)
    @guesses << guess
    @guesses.last
  end


end
