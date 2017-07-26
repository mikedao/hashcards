require './test/test_helper'
require './lib/card'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_guess_exists
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Guess, guess
  end

  def test_guess_belongs_to_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal guess.card, card
  end

  def test_guess_has_response
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal guess.response, "Juneau"
  end

  def test_guess_is_correct
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert guess.correct?
  end

  def test_guess_is_incorrect
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Anchorage", card)
    refute guess.correct?
  end

  def test_guess_feedback
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Anchorage", card)
    assert_equal guess.feedback, "Incorrect."

    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal guess.feedback, "Correct!"
  end

end
