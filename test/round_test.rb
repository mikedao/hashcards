require './test/test_helper'
require './lib/guess'
require './lib/card'
require './lib/deck'
require './lib/round'


class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_it_can_hold_a_deck
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_it_can_hold_guesses
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_it_knows_which_card_is_current
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_it_can_record_guesses
    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    guess = Guess.new("Juneau", card_1)

    round = Round.new(deck)

    assert_equal guess, round.record_guess


  end

end
