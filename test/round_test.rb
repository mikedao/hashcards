require_relative 'test_helper'
require_relative '../lib/round'
require_relative '../lib/deck'
require_relative '../lib/card'

class RoundTest < Minitest::Test
  attr_reader :deck, :round, :card_1, :card_2
  def setup
    @card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    @card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    @deck = Deck.new([card_1, card_2])
    @round = Round.new(deck)
  end

  def test_it_exists_and_has_a_deck
    assert_instance_of Round, round
    assert_equal deck, round.deck
    assert_equal [], round.guesses
  end

  def test_it_knows_the_current_card
    assert_equal round.current_card, card_1
  end

  def test_it_can_record_a_guess
    guess = round.record_guess("Juneau")

    assert_instance_of Guess, guess
    assert_equal 1, round.guesses.count
    assert_equal 'Correct!', round.guesses.first.feedback
  end

  def test_it_knows_the_number_of_correct_guesses_after_one_guess
    guess = round.record_guess("Juneau")

    assert_equal 1, round.number_correct
  end

  def test_the_current_card_changes_after_recording_guess
    assert_equal round.current_card, card_1

    guess = round.record_guess("Juneau")

    assert_equal round.current_card, card_2
  end
end
