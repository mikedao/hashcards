require './test/test_helper'
require './lib/card'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_instance_of Card, card
  end

  def test_it_has_a_question
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_it_has_an_answer
    card = Card.new(answer: "What is the capital of Alaska?", answer: "Juneau")

    assert_equal "Juneau", card.answer
  end

  
end
