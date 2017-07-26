require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'

class GuessTest < Minitest::Test

  def test_it_exits
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert guess
  end

  def test_it_holds_a_card_object
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert Card.new, guess.card
  end

  def test_it_holds_another_card_object
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    assert Card.new, guess.card
  end

  def test_it_has_a_response
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal "Saturn", guess.response
  end

  def test_it_has_a_different_response
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end

  def test_it_can_assess_a_correct_response
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert true, guess.correct?
  end

  def test_it_can_assess_an_incorrect_response
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    refute guess.correct?
  end

  def test_it_has_a_feedback
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_it_can_a_give_feedback_for_incorrect_guesses
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal "Incorrect.", guess.feedback
  end

end
