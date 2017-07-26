require './test/test_helper'
require './lib/card'
require 'pry'


class CardTest < MiniTest::Test

  def test_it_can_create_card
    card = Card.new

    assert_instance_of Card, card
  end

  def test_it_returns_question
    question = "What is the capital of Alaska?"
    card = Card.new(question: question)

    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_it_returns_answer

    answer = "Juneau"
    question = "What is the capital of Alaska?"
    card = Card.new(question: question, answer: answer)
    expected = card.answer
    actual = answer

    assert_equal expected, actual
  end

  def method_name

  end








end
