require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'
require 'pry'

class GuessTest < Minitest::Test
  #def setup
  #card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
  #guess = Guess.new("Juneau", card)
 #end
  def test_creates_a_new_guess
  card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
  guess = Guess.new("Juneau", card)
    assert_instance_of(guess)
  end

  def test_guess_object
  card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
  guess = Guess.new("Juneau", card)
  result = guess.card

  end

  def test_correct_guess
  card = Card.new(question: "What is the capital of Alaska?", answer: "Juneau")
  guess = Guess.new("Juneau", card)
    result = guess.response

    assert_equal result, "Correct"
  end
 end
