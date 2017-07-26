class Card
  attr_reader :question, :answer

  def initialize(**args)
    @question = args.values[0]
    @answer = args.values[1]
  end
end
