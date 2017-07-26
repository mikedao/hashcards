require_relative 'test_helper'
require_relative '../lib/guess'

class GuessTest < Minitest::Test

  attr_reader :card, :card_2

  def setup
    @card = Card.new(question: "What is the capital of Alaska",
                    answer: "Juneau")
    @card_2 = Card.new(question: "Which planet is closes to the sun?",
                       answer: "Mercury")
  end

  def test_instance_of
    guess = Guess.new("Juneau", card)

    assert_instance_of Guess, guess
    assert_instance_of Card, guess.card
  end

  def test_guess_response_method
    guess = Guess.new("Juneau", card)
    guess_2 = Guess.new("Saturn", card_2)

    assert_equal "Juneau", guess.response
    assert_equal "Saturn", guess_2.response
  end

  def test_guess_correct_method
    guess = Guess.new("Juneau", card)
    guess_2 = Guess.new("Saturn", card_2)

    assert guess.correct?
    refute guess_2.correct?
  end

  def test_guess_feedback_method
    guess = Guess.new("Juneau", card)
    guess_2 = Guess.new("Saturn", card_2)

    assert_equal "Correct!", guess.feedback
    assert_equal "Incorrect!", guess_2.feedback
  end
end
