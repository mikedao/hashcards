require './test/test_helper'

class GuessTest < Minitest::Test
  def test_guess
    card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    guess = Guess.new("Saturn", card)

    assert_instance_of Card, guess.card
    refute guess.correct?

    assert_equal "Incorrect.", guess.feedback
  end
end
