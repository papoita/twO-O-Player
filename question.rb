class Question
  attr_reader :correct_answer, :num1, :num2, :player_answer
# attr_accessor : lives, name

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = num1 + num2
  end

  def make_question
    puts "what is #{num1} plus #{num2}?"
    @player_answer = $stdin.gets.chomp.to_i
    puts "The correct answer is #{correct_answer}"
  end
  
  def answer_eval()
    if @player_answer == correct_answer
      puts "Good Job! Your answer is correct"
      return true
    end
    puts "NOPE your answer is wrong! You loose a life"
    return false
  end 
end


# q1 = Question.new
# q1.make_question
# q1.answer_eval


# p q1
#puts q1.correct_answer
# puts num1

# puts num2