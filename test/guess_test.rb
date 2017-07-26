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
end
