require_relative 'test_helper'
require './lib/guess'
require './lib/card'

class TestCard < Minitest::Test

  def test_it_can_create_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneu")

    result = "What is the capital of Alaska?"
    result2 = "Juneu"

    assert_equal result, card.question
    assert_equal result2, card.answer

  end

  def test_it_can_take_a_guess
     card = Card.new(question: "What is the capital of Alaska?", answer: "Juneu")
  guess = Guess.new("Saturn", card)

  result = "Saturn"
 
  assert_instance_of Card, guess.card
  assert_equal result, guess.response
  refute guess.correct?
  assert_equal "Incorrect.", guess.feedback

  end





end
