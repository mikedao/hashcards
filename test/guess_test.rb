require_relative 'test_helper'

class GuessTest < Minitest::Test

  def test_guess_has_response_and_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    actual = guess.card

    assert_equal card, actual
    assert_equal "Juneau", guess.response
  end

  def test_is_gives_feedback_and_correct_boolean
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    expected = true

    assert_equal expected, guess.correct?
    assert_equal "Correct!", guess.feedback
  end

  def test_guess_has_response_and_card
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)
    actual = guess.card

    assert_equal card, actual
    assert_equal "Saturn", guess.response
  end

  def test_is_gives_feedback_and_correct_boolean
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)
    expected = false

    assert_equal expected, guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end
end
