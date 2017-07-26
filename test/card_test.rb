require_relative "test_helper"
require_relative "../lib/card"
require_relative "../lib/guess"
require_relative "../lib/guess"


class CardTest <Minitest::Test

  def test_card_is_created_with_valid_attributes
    skip
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end

  def test_answer_matches_card_answer
    skip
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Card, guess.card
    assert_equal "Juneau", guess.response
    assert_equal "Correct", guess.feedback
    assert guess.correct?
  end

  def test_deck_has_cards

    card_1 = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    card_2 = Card.new(question: "The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", answer: "Mars")
    card_3 = Card.new(question: "Describe in words the exact direction that is 697.5° clockwise from due north?", answer: "North north west")

    deck = Deck.new([card_1, card_2, card_3])

    assert_equal [card_1, card_2, card_3], deck.cards
    assert_equal 3, deck.count
  end

end
