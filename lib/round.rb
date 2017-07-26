require_relative 'guess'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = Array.new
  end

  def current_card
    @current_card = @deck.cards.shift
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
  end

  def number_correct
    correct = @guesses.count do |guess|
      guess.feedback == "Correct!"
    end
    return correct
  end

  def percent_correct
    percent = (((number_correct.to_f) / (@guesses.count).to_f) * 100)
  end
end
