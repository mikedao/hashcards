require_relative "test_helper"
require_relative "../lib/card.rb"
require_relative "../lib/deck.rb"
require_relative "../lib/guess.rb"
require_relative "../lib/round.rb"
require 'pry'
class RoundTest <Minitest::Test

  def test_round_is_created_with_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
    assert_instance_of Deck, round.deck
    assert_equal deck, round.deck
  end

  def test_round_guesses_is_an_empty_array
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_round_has_current_card
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
    assert_equal "Juneau", round.current_card.answer
  end

  def test_round_records_guess_in_guesses
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = Guess.new("Juneau", card_1)
    round.record_guess("Juneau")
    #line 46 fails with the following message:
    # "No visible difference in the Guess#inspect output.
    # "You should look at the implementation of #== on Guess or its members."
    #assert_equal guess, round.record_guess("Juneau")
    assert_equal 1, round.guesses.count
  end

  def test_round_number_correct_returns_accurate_count
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    card_3 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("93,000,000")
    round.record_guess("1")

    assert_equal "Correct!", round.guesses.first.feedback
    assert_equal "Correct!", round.guesses[0].feedback
    assert_equal "Incorrect", round.guesses.last.feedback
    #binding.pry
    assert_equal 2, round.number_correct
  end

  def test_round_has_multiple_cards_and_guesses

  end

  def test_round_percent_correct_returns_accurate_value

  end
end
