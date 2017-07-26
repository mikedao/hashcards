require './test/test_helper'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Guess, guess
  end

  def test_it_has_a_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal card, guess.card
  end

  def test_it_has_a_response
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end

  def test_it_can_be_checked
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess_1 = Guess.new("Juneau", card)
    guess_2 = Guess.new("Kentucky", card)

    assert guess_1.correct?
    assert_equal false, guess_2.correct?
  end

  def test_it_can_send_feedback
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess_1 = Guess.new("Juneau", card)
    guess_2 = Guess.new("Kentucky", card)

    assert_equal  "Correct!", guess_1.feedback
    assert_equal "Incorrect.", guess_2.feedback

  end
end
