require './test/test_helper'
require './lib/guess'
class GuessTest < Minitest::Test
  def test_a_guess_can_be_created
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of(Guess, guess)
  end

  def test_it_can_call_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal(card, guess.card)
  end

  def test_it_can_call_guess_with_response
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal(card.answer, guess.response)
  end

  def test_correct_response_matches_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal(guess.response, card.answer)
    assert(guess.correct?)
  end

  def test_it_gives_feedback
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal(guess.feedback, "Correct!")
    guess = Guess.new("Anchorage", card)
    assert_equal(guess.feedback, "Incorrect.")
  end
end
