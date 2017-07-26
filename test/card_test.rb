
require_relative '../lib/card'
require_relative 'test_helper'

class CardTest < Minitest::Test


  def test_card_exists
    card = Card.new("x?", "y.")
    assert_instance_of Card, card
  end

  def test_card_has_question_and_answer

    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end


  


end
