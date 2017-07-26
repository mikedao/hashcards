class Guess
  attr_reader :guess, :object
  def initialize(guess, object)
    @guess = guess
    @object = object
  end

  def response
    @guess
  end

  def correct?
    @guess == @object.answer
  end

  def feedback
    @guess == @object.answer ? "Correct!" : "Incorrect!"
  end
end
