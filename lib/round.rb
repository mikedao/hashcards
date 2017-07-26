require './lib/deck'
require './lib/guess'
require 'pry'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = nil
    @correct_guesses = 0
    @guessed = 0
  end

  def current_card
      @current_card = @deck.cards.shift
  end

  def record_guess(guess)
    new_record = Guess.new(guess, current_card)
    @guesses << new_record
      if new_record.correct?
        @correct_guesses += 1
      end
    new_record
  end

  def number_correct
    @correct_guesses
  end

end
