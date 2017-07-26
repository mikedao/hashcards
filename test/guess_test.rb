require_relative '../lib/guess'
require_relative 'test_helper'

class GuessTest < Minitest::Test


  def test_guess_exists
    result = Guess.new("something", "something else")
    assert_instance_of Guess, result
  end


  def test_can_call_card_class
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    result = guess.card
    instance_of? Card
  end

  def test_can_check_answers_happy
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Mercury", card)
    assert_equal guess.correct?, true
    assert_equal guess.feedback, "Correct!"
  end

  def test_can_check_answers_sad
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Pluto", card)
    assert_equal guess.correct?, false
    assert_equal guess.feedback, "Incorrect!"
  end
  # require 'pry'; binding.pry


end
