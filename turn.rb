require './question'
require './player'

class Turn 

  def initialize(player)
    @new_question = Question.new()
    @current_player = player
  end

  def ask_question
    puts "#{@current_player.name} its your turn"
    @new_question.make_question
    if !@new_question.answer_eval
       @current_player.lost_life 
       puts " #{@current_player.lives} remaining"
       #puts "#{@current_player.lost_life} lives remaining"
    end
  end



end