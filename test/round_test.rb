require_relative 'test_helper'

class RoundTest < Minitest::Test

  def test_it_can_hold_a_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    expected = deck

    assert_equal expected, round.deck
  end

  def test_it_hold_guesses_and_find_current_card
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    expected_1 = []
    expected_2 = card_1

    assert_equal expected_1, round.guesses
    # require 'pry'; binding.pry
    assert_equal expected_2, round.current_card
  end

  def test_it_hold_a_guessed_answer
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    expected_1 = round.record_guess("Juneau")

    assert_equal expected_1, round.guesses
    assert_equal 1, round.guesses.count
  end

  def test_it_passes_feedback_back_through_guess
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    round.record_guess("Juneau")

    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_it_counts_correct_guesses
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    round.record_guess("Juneau")

    assert_equal "Correct!", round.guesses.first.feedback
    assert_equal 1, round.number_correct
  end

  def test_it_passes_feedback_back_through_guess_dos
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("2")

    assert_equal "Correct!", round.guesses.first.feedback
    assert_equal "Incorrect.", round.guesses.last.feedback
  end

  def test_it_counts_correct_guesses_dos
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("2")

    assert_equal "Correct!", round.guesses.first.feedback
    assert_equal "Incorrect.", round.guesses.last.feedback
    assert_equal 1, round.number_correct
    assert_equal 50, round.percent_correct
    end
end
