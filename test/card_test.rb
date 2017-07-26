require_relative 'test_helper'
require_relative '../lib/card'
class TestCard < MiniTest::Test

  def setup
    @card1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    @card2 = Card.new(question: "What is the capital of Texas?", answer: "Austin")
  end

  def test_cards_have_questions
    assert_equal @card1.question, "What is the capital of Alaska?"
    assert_equal @card2.question, "What is the capital of Texas?"
  end

  def test_cards_have_answers
    assert_equal @card1.answer, "Juneau"
    assert_equal @card2.answer, "Austin"
  end
end
