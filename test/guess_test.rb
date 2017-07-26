require_relative 'test_helper'
require_relative '../lib/card.rb'
require_relative '../lib/guess.rb'

class GuessTest < Minitest::Test

  def test_it_knows_a_correct_answer
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Card, guess.card
    assert_equal guess.response, "Juneau"
    assert guess.correct?
    assert_equal guess.feedback, "Correct!"
  end

  def test_it_knows_an_incorrect_answer
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    assert_instance_of Card, guess.card
    assert_equal guess.response, "Saturn"
    assert !guess.correct?
    assert_equal guess.feedback, "Incorrect."
  end

end
