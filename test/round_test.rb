require_relative 'test_helper'
require_relative '../lib/round'

class RoundTest < Minitest::Test

  def test_new_instance
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
    assert_instance_of Deck, round.deck
  end

end
