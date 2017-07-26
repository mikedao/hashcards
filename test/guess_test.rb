require './test/test_helper'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_it_exists
    guess = Guess.new
    assert_instance_of Guess, guess
  end
end
