require './test/test_helper'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Guess, guess
  end

  def test_it_takes_an_answer_and_a_card_at_initialize
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Card, guess.card
    assert_equal "Juneau", guess.response
    assert guess.correct?
    assert_equal "Correct", guess.feedback
  end
end
