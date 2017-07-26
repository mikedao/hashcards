require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'

class CardTest < Minitest::Test
 def  test_create_a_new_object
  card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
#   assert_instance_of(card)
 end

 def test_question_attribute
  card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
  result = card.question

  assert_equal result, "What is the capital of Alaska?"
 end

 def test_answer_attribute
  card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
  result = card.answer

  assert_equal result, "Juneau"
 end
end
