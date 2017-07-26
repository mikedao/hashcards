require './test/test_helper'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_decks_can_be_created
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_instance_of(Deck, deck)
  end

  def test_decks_can_call_all_cards_in_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal(deck.cards, [card_1, card_2, card_3])
  end

  def test_deck_can_count_cards
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal(deck.count, 3)
  end
end
