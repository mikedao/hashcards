require_relative 'guess'

class Round
  attr_reader :deck, :guesses, :cards

  def initialize(deck)
    @deck = deck
    @cards = deck.cards
    @guesses = []
  end

  def current_card
    cards.first
  end

  def record_guess(guess)
    new_guess = Guess.new(guess, current_card)
    cards.delete(current_card)
    guesses << new_guess
    new_guess
  end

  def number_correct
    score = 0
    guesses.each do |guess|
      score += 1 if guess.correct?
    end
    score
  end
end
