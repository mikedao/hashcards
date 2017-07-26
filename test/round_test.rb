require './test/test_helper'
require './lib/guess'
require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'


class RoundTest < MiniTest::Test

  def test_it_creates_round
    round = Round.new("deck")

    assert_instance_of Round, round
  end

  def test_it_has_a_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    expected = round.deck
    actual = deck

    assert_equal expected, actual
  end

  def test_that_guesses_returns_empty_array
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    expected = round.guesses
    actual = []

    assert_equal expected, actual
  end


end
