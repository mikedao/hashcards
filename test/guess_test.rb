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
    assert_equal(@guess1.response), "Juneau"
    assert(@guess1.correct?)
    assert_equal(@guess1.feedback), "Correct!"
  end

  def test_guess_can_be_incorrect
    assert_equal(@guess2.response), "Juneau"
    refute(@guess2.correct?)
    assert_equal(@guess2.feedback), "Incorrect."
  end
end
