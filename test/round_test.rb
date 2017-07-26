require './test/test_helper'
require './lib/round'

class RoundTest < Minitest::Test
  def test_a_round_can_be_initialized
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of(Round, round)
  end

  def test_it_can_call_deck_and_guesses
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal(round.deck, deck)
    assert_equal(round.guesses, [])
  end

  def test_it_returns_current_card
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal(round.current_card, card_1)
  end

  def test_record_guess_creates_and_stores_instance_of_guess
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess = round.record_guess("Juneau")
    assert_instance_of(Guess, guess)
  end

  def test_round_gives_number_correct
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess("Juneau")
    result = round.number_correct
    assert_equal(result, 1)
  end

  def test_round_can_return_correct_for_correct_answer
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess1 = round.record_guess("Juneau")
    assert_equal(round.guesses.count, 1)
    assert_equal(round.guesses.first.feedback, "Correct!")
    assert_equal(round.guesses.first, guess1)
  end

  def test_round_can_switch_to_new_current_card_after_guess
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    result = round.current_card
    assert_equal(result, card_1)
    result2 = round.current_card
    assert_equal(result2, card_2)
  end

  def test_round_gives_correct_guess_average
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "Approximately how many miles are in one astronomical unit?", answer: "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.current_card
    binding.pry
    guess = round.record_guess("Juneau")
    result = round.current_card
    binding.pry
    assert_equal(result, card_2)
    guess2 = round.record_guess("2")
    assert_equal(round.guesses.last.feedback, "Incorrect.")
  end
end
