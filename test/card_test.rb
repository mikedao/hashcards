require_relative 'test_helper'
require_relative '../lib/card'
class TestCard < MiniTest::Test

  def setup
    @card1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    @card2 = Card.new(question: "What is the capital of Texas?", answer: "Austin")
  end

  def test_cards_have_questions
    assert_equal "What is the capital of Alaska?", @card1.question
    assert_equal "What is the capital of Texas?", @card2.question
  end

  def test_cards_have_answers
    assert_equal "Juneau", @card1.answer
    assert_equal "Austin", @card2.answer
  end
end
