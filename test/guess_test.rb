require_relative "test_helper"
require_relative "../lib/guess.rb"
require_relative "../lib/card.rb"

class GuessTest < Minitest::Test

  def test_guess_is_initialized_with_card_attribute
    card_1 = Card.new(question: "What is the capital of Colorado?", answer: "Denver")
    guess = Guess.new("Juneau", card_1)

    assert_instance_of Guess, guess
    assert_instance_of Card, guess.card
  end

  def test_guess_is_correct_when_response_matches_card_answer
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    guess_2 = Guess.new("Denver", card_1)

    assert_equal "Juneau", guess_1.response
    assert_equal "Denver", guess_2.response
    assert guess_1.correct?
    refute guess_2.correct?
  end

  def test_guess_feedback_is_accurate
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "What is the capital of Colorado?", answer: "Denver")
    guess_1 = Guess.new("Juneau", card_1)
    guess_2 = Guess.new("Juneau", card_2)

    assert_equal "Correct", guess_1.feedback
    assert_equal "Incorrect", guess_2.feedback
  end

end
