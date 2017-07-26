require './test/test_helper'

class GuessTest < Minitest::Test

  def setup
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    @round = Round.new(deck)
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_it_has_a_deck
    assert_instance_of Deck, @round.deck
  end

  def test_it_has_both_cards_in_its_deck
    assert_equal 2, @round.deck.cards.count
    assert_instance_of Card, @round.deck.cards.first
  end

  def test_it_records_guesses_and_starts_at_none
    assert_equal [], @round.guesses
  end
end
