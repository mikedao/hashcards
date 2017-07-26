require './test/test_helper'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    card       = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_instance_of Card, card
  end

  def test_it_takes_a_question_and_answer_at_initialize
    card       = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    expected_1 = "What is the capital of Alaska?"
    actual_1   = card.question
    expected_2 = "Juneau"
    actual_2   = card.answer

    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
  end
end
