class Question
# attr_accessor : lives, name

  def initialize()
    num1 = rand(1..20)
    num2 = rand(1..20)
    correct_answer = num1 + num2
    puts "what is #{num1} plus #{num2}?"
    player_answer = $stdin.gets.chomp.to_i
    puts "The correct answer is #{correct_answer}"
  end
  
  def answer_eval()
      if player_answer === correct_answer
        return true
        puts "Good Job! Your answer is correct"
      else 
        return false
        puts "NOPE your answer is wrong! You loose a life"
      end
  end 
end

#question()

# puts num1
# puts num2