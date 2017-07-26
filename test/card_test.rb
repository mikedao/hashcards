require_relative "test_helper"
require "./lib/card"

class CardTest < Minitest::Test
  def test_it_initializes_with_question_and_answer
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end
end
