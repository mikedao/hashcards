require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'

class CardTest < Minitest::Test

  def test_it_exits
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert card
  end

  def test_it_has_a_question
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal  "What is the capital of Alaska?", card.question
  end

  def test_it_has_an_anser
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    assert_equal  "Juneau", card.answer
  end
end
