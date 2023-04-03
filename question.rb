class Question
  attr_accessor :answer, :question
  
  def initialize
    int1 = rand(21) 
    int2 = rand(21)
    @question = "What does #{int1} plus #{int2} equal?"
    @answer = int1 + int2
  end

end 


