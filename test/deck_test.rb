require_relative 'test_helper'

class DeckTest < Minitest::Test

  def test_the_deck_can_store_cards_so_it_can_be_called_a_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    expected = [card_1, card_2, card_3]

    assert_equal expected, deck.cards
    assert_equal 3, deck.count
  end
end
