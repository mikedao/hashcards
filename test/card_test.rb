require './test/test_helper'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new

    assert_instance_of Card, card
  end

end
