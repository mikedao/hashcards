require './test/test_helper'

class DeckTest < Minitest::Test

  def setup
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    @deck = Deck.new([card_1, card_2, card_3])
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_has_cards
    assert_instance_of Array, @deck.cards
    assert_equal 3, @deck.cards.count
    assert_equal "Juneau", @deck.cards.first.answer
  end
end
