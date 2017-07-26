require './test/test_helper'
require './lib/card'
class CardTest < Minitest::Test

  def test_it_can_be_created_with_hash
    card = Card.new question: "What is the capital of Alaska?", answer: "Juneau"
    assert_equal(card.class, Card)
  end

  def test_it_can_call_question
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal(card.question, "What is the capital of Alaska?")
  end

  def test_it_can_call_answer
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal(card.answer, "Juneau")
  end

end
