require './test/test_helper'
require './lib/card'

class CardTest < Minitest::Test

  def test_card_exists
    card = Card.new(question: "?", answer: "help")
    assert_instance_of Card, card
  end

  def test_card_has_question
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal card.question, "What is the capital of Alaska?"
  end

  def test_card_has_answer
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal card.answer, "Juneau"
  end

  
end
