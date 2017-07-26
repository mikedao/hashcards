require_relative 'test_helper'
require_relative '../lib/card.rb'
require_relative '../lib/deck.rb'
require_relative '../lib/round.rb'
require_relative '../lib/guess.rb'
require 'pry'

class RoundTest < Minitest::Test

  def test_it_exists_with_a_deck_and_cards
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Deck, round.deck
    assert_instance_of Array, round.guesses
    assert round.guesses.empty?
  end

  def test_it_can_keep_track_of_guesses_and_current_card
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Juneau")

    assert_instance_of Card, round.current_card
    assert_equal round.current_card.answer, "Juneau"
    assert_equal round.guesses.count, 1
    assert_equal round.guesses.first.feedback, "Correct!"
  end
end
