require_relative 'test_helper'
require_relative '../lib/deck'
require_relative '../lib/card'

class DeckTest < Minitest::Test
  def test_it_exists_and_can_have_cards
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_instance_of Deck, deck
    assert_equal cards, deck.cards
  end

  def test_it_knows_how_many_cards_in_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_equal cards, deck.cards
    assert_equal 3, deck.count
  end
end
