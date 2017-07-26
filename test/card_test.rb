require_relative 'test_helper'
require_relative '../lib/card.rb'

class CardTest < Minitest::Test

  def test_it_exists_with_question_and_answer
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_instance_of Card, card
    assert_equal card.question, "What is the capital of Alaska?"
    assert_equal card.answer, "Juneau"
  end
end
