require_relative 'test_helper'
require_relative '../lib/guess'
require_relative '../lib/card'

class GuessTest < Minitest::Test
  def test_it_exists_and_has_a_card_and_response
    question = "What is the capital of Alaska?"
    answer = "Juneau"
    response = "Anchorage"
    card = Card.new(question: question, answer: answer)
    guess = Guess.new(response, card)

    assert_instance_of Guess, guess
    assert_equal guess.response, response
    assert_equal guess.card, card
  end

  def test_it_knows_when_the_response_is_correct
    question = "What is the capital of Alaska?"
    answer = "Juneau"
    response = "Juneau"
    card = Card.new(question: question, answer: answer)
    guess = Guess.new(response, card)

    assert guess.correct?
  end

  def test_it_knows_when_the_response_is_incorrect
    question = "What is the capital of Alaska?"
    answer = "Juneau"
    response = "Anchorage"
    card = Card.new(question: question, answer: answer)
    guess = Guess.new(response, card)

    refute guess.correct?
  end
end
