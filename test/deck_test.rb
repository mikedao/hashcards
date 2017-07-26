require_relative 'test_helper'
require_relative '../lib/deck'

class DeckTest < Minitest::Test

  def test_instance_of
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5 degrees clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_instance_of Deck, deck
  end

  def test_cards_method
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5 degrees clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_instance_of Array, deck.cards
  end

  def test_count_method
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5 degrees clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal 3, deck.count
  end
end
