require_relative "test_helper"
require "./lib/guess"

class GuessTest < Minitest::Test
  def test_it_initializes_with_response_and_card
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal card, guess.card
    assert_equal "Juneau", guess.response
  end
  def test_correct_returns_true_if_guess_matches_card_answer_otherwie_false
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess1 = Guess.new("Juneau", card)
    guess2 = Guess.new("Sacramento", card)
    assert guess1.correct?
    refute guess2.correct?
  end
  def test_feedback_returns_correct_for_correct_answer_otherwise_incorrect
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess1 = Guess.new("Juneau", card)
    guess2 = Guess.new("Sacramento", card)
    assert_equal "Correct", guess1.feedback
    assert_equal "Incorrect.", guess2.feedback
  end

end
