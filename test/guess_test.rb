require './test/test_helper'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test
  attr_reader :correct_guess, :incorrect_guess

  def setup
    good_card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    bad_card = Card.new(question: "Which planet is closest to the sun?", answer: "Mercury")
    @correct_guess = Guess.new("Juneau", good_card)
    @incorrect_guess = Guess.new("Saturn", bad_card)
  end

  def test_it_exists
    assert_instance_of Guess, correct_guess
  end

  def test_it_takes_an_answer_and_a_card_at_initialize
    assert_instance_of Card, correct_guess.card
    assert_equal "Juneau", correct_guess.response
    assert correct_guess.correct?
    assert_equal "Correct!", correct_guess.feedback
  end

  def test_it_takes_a_response
    assert_equal "Juneau", correct_guess.response
    assert_equal "Saturn", incorrect_guess.response
  end

  def test_it_gives_feedback_depending_on_correct_or_incorrect_guess
    assert correct_guess.correct?
    refute incorrect_guess.correct?
    assert_equal "Correct!", correct_guess.feedback
    assert_equal "Wrong!", incorrect_guess.feedback
  end
end
