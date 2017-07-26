require_relative 'test_helper'
require_relative '../lib/card'
require_relative '../lib/deck'

class DeckTest < MiniTest::Test
  def setup
    @card1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    @card2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    @card3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    @deck1 = Deck.new([@card1, @card2, @card3])

    @card4 = Card.new(question: "What is the capital of Texas?", answer: "Austin")
    @card5 = Card.new(question: "What is the capital of Colorado?", answer: "Denver")
    @card6 = Card.new(question: "What is the capital of California?", answer: "Sacramento")
    @card7 = Card.new(question: "What is the capital of Georgia?", answer: "Atlanta")
    @deck2 = Deck.new([@card4, @card5, @card6, @card7])
  end

  def test_deck_can_have_cards_and_count
    assert_equal ([@card1, @card2, @card3]), @deck1.cards
    assert_equal 3, @deck1.count
  end

  def test_deck_can_have_different_cards_and_count
    assert_equal ([@card4, @card5, @card6, @card7]), @deck2.cards
    assert_equal 4, @deck2.count
  end
end
