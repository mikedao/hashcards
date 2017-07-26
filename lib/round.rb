require 'pry'
class Round
  attr_reader :deck, :guesses, :current_card

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = deck.cards.first
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, @current_card)
  end

  def number_correct
    @guesses.count {|guess| guess.correct?}
  end
end
