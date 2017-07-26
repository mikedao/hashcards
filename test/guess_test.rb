require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

require 'pry'

class GuessTest < Minitest::Test

  def test_a_guess_exists
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Card, guess.card
  end

  def test_it_has_the_desired_response
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end


  def test_if_it_recognizes_correct_answer
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)


    assert_equal true, guess.correct?
    assert guess.correct?

    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Banana", card)


    assert_equal false, guess.correct?
    refute guess.correct?
  end

  def test_it_can_tell_you_if_answer_is_correct_or_not
    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!", guess.feedback

    card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
    guess = Guess.new("Banana", card)

    assert_equal "Incorrect!", guess.feedback
  end
end
