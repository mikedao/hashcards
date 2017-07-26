
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < Minitest::Test

  def test_a_card_exists
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_instance_of Card, card
  end

  def test_a_card_has_attributes
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end

end
