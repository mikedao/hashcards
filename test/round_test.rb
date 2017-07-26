require './test/test_helper'

class RoundTest < Minitest::Test
  def test_round_analytics
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Deck, round.deck

    assert_equal [], round.guesses
    assert_instance_of Card, round.current_card
    assert_instance_of Guess, round.record_guess("Juneau")
  end
end
