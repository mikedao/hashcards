require './test/test_helper'
require './lib/guess'
require './lib/card'
require 'pry'


class GuessTest < MiniTest::Test

  def test_it_can_create_guess
    guess = Guess.new("things", "thing")

    assert_instance_of Guess, guess
  end

  def test_it_returns_guess
    guess = Guess.new("Denver", "thing")

    assert_equal "Denver", guess.response
  end

  def test_it_can_have_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Denver", card)

    assert_equal card, guess.card
  end

  def test_that_response_returns_true
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    expected = true
    actual = guess.correct?

    assert_equal expected, actual
  end

  def test_that_response_returns_false
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Denver", card)

    expected = false
    actual = guess.correct?

    assert_equal expected, actual
  end

  def test_that_proper_answer_returns_correct
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    expected = "Correct!"
    actual = guess.feedback

    assert_equal expected, actual
  end

  def test_that_wrong_answer_returns_incorrect
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    expected = "Incorrect."
    actual = guess.feedback

    assert_equal expected, actual    
  end

end
