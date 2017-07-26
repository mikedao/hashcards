require_relative '../lib/guess'
require_relative 'test_helper'

class GuessTest < Minitest::Test


  def test_deck_exists
    result = Guess.new("something", "something else")
    assert_instance_of Guess, result
  end





end
