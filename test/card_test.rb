require './test/test_helper'

class CardTest < Minitest::Test
  def test_card_basics
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end
end
