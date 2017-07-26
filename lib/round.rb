class Round

  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    num = 0
    if @guesses.count > 0 && @guesses[num].correct?
      card = @deck.cards[num + 1]
      return card
    else
      card = @deck.cards[num]
      return card
    end
  end

  def record_guess(guess)
    new_guess = Guess.new(guess, current_card)
    @guesses << new_guess
  end

  def number_correct
    num = 0
    @guesses.each do |guess|
      num += 1 if guess.correct?
    end
    num
  end

  def percent_correct
    correct = 0
    incorrect = 0
    @guesses.each do |guess|
      correct += 1 if guess.correct?
    end
    (correct.to_f / @guesses.count.to_f) * 100
  end
end
