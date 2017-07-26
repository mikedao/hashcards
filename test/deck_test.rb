require './test/test_helper'
require './lib/guess'
require './lib/card'
require './lib/deck'
require 'pry'


class DeckTest < MiniTest::Test

  def test_it_can_create_deck
    deck = Deck.new(["thing_1"])

    assert_instance_of Deck, deck
  end

  def test_it_returns_array_of_cards
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    actual = [card_1, card_2, card_3]
    expected = deck.cards

    assert_equal expected, actual
  end

  def test_it_has_an_array_of_cards
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    expected = deck.count
    actual = 3

    assert_equal expected, actual
  end



end
