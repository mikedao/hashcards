class Card
  attr_reader :question, :answer

  def initialize(content)
    @question = content[:question]
    @answer   = content[:answer]
  end
end
