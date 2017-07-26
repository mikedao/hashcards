require_relative "test_helper"
require_relative "../lib/card"


class CardTest <Minitest::Test

  def test_card_is_created_with_valid_attributes
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end

end
