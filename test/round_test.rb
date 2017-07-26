require_relative 'test_helper'
require_relative '../lib/card'
require_relative '../lib/deck'
require_relative '../lib/guess'
require_relative '../lib/round'

class RoundTest < MiniTest::Test
  def setup
    @card1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    @card2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    @deck1 = Deck.new([@card1, @card2])
    @round1 = Round.new(@deck1)

    @card3 = Card.new(question: "What is the capital of Texas?", answer: "Austin")
    @card4 = Card.new(question: "What is the capital of Georgia", answer: "Atlanta")
    @deck2 = Deck.new([@card3, @card4])
    @round2 = Round.new(@deck2)
  end

  def test_round_can_have_deck
    assert_equal @deck1, @round1.deck
    assert_equal @deck2, @round2.deck
  end

  def test_round_can_have_guesses
    assert_equal [], @round1.guesses
    assert_equal [], @round2.guesses

    guess1 = Guess.new("Austin", @card1)
    guess2 = Guess.new("Ramps", @card1)
    guess3 = Guess.new("Peanuts", @card4)

    assert_equal 2, @round1.guesses
    assert_equal 1, @round2.guesses
  end

  # def test_round_can_have_current_card
  #
  # end
  # round.current_card
  # => #<Card:0x007ffdf1820a90 @answer="Juneau", @question="What is the capital of Alaska?">
  # round.record_guess("Juneau")
  # => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @answer="Juneau", @question="What is the capital of Alaska?">, @response="Juneau">
  # round.guesses.count
  # => 1
  # round.guesses.first.feedback
  # => "Correct!"
  # round.number_correct
  # => 1
  # round.current_card
  # => #<Card:0x007ffdf1820a90 @answer="93,000,000", @question="Approximately how many miles are in one astronomical unit?">
  # round.record_guess("2")
  # => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @answer="93,000,000", @question="Approximately how many miles are in one astronomical unit?">, @response="2">
  # round.guesses.count
  # => 2
  # round.guesses.last.feedback
  # => "Incorrect."
  # round.number_correct
  # => 1
  # round.percent_correct
  # => 50

end
