require_relative 'test_helper'
require_relative '../lib/card'

class CardTest < Minitest::Test
  def test_it_exists_and_has_question_and_answer
    question = "What is the capital of Alaska?"
    answer = "Juneau"
    card = Card.new(question: question, answer: answer)

    assert_instance_of Card, card
    assert_equal card.question, question
    assert_equal card.answer, answer
  end
end
