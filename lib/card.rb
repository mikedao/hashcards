# Good luck!
class Card
  attr_reader :question, :answer
  def initialize(info)
    @question = info[:question]
    @answer = info[:answer]
  end
end
