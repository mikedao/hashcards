require 'pry'
class Guess 

  def initialize(guess, card)
    @guess = guess
    @card = Card.new(@c_hash)
  end

  def card
    @card
  end

  def response
    @guess
  end

  def correct?
    if @guess == @card.c_hash.values[1]
       true
    else
      false
    end
  end

  def feedback
    if @guess == @card.c_hash.values[1]
      puts "Correct"
    else
      puts "Incorrect"
    end
  end
end


