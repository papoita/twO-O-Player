require 'question'
require 'player'

class Turn()

  def initialize(player)
    @new_question = Question.new()
    @current_player = player
  end

  def remaining_lives()
   puts @current_player.lives
  end
end