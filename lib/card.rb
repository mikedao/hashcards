class Card
  attr_reader :question, :answer
  def initialize(params)
    @question = params[:question]
    @answer = params[:answer]
  end
end
