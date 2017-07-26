require_relative 'test_helper'

class CardTest < Minitest::Test
  def test_card_displays_answer
    card = Card.new(question: "What is This?", answer: "We don't know")
    expected = card.answer

    assert_equal expected, "We don't know"
  end

  def test_card_displays_question
    card = Card.new(question: "What is This?", answer: "We don't know")
    expected = card.question

    assert_equal expected, "What is This?"
  end
end
