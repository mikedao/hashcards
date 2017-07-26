require_relative 'test_helper'
require_relative '../lib/card'
require_relative '../lib/guess'

class TestGuess < MiniTest::Test
  def setup
    @card1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    @guess1 = Guess.new("Juneau", @card1)

    @card2 = Card.new(question: "What is the capital of Texas?", answer: "Austin")
    @guess2 = Guess.new("Juneau", @card2)
  end

  def test_guess_can_be_correct
    assert_equal @card1, @guess1.card
    assert_equal "Juneau", @guess1.response
    assert @guess1.correct?
    assert_equal "Correct!", @guess1.feedback
  end

  def test_guess_can_be_incorrect
    assert_equal @card2, @guess2.card
    assert_equal "Juneau", @guess2.response
    refute @guess2.correct?
    assert_equal "Incorrect.", @guess2.feedback
  end
end
