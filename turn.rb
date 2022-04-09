require 'question'
require 'player'

class Turn()

  def initialize()
    new_question = Question.new()
    current_player = Player.name
  end

  def current_player
    if Player.name == @player1.name
      @current_player = player1
    else
      @current_player = player2
    end
  end

  def current_question
    new_question = Question.new()
  end

  def remaining_lives()
  if new_question.answer_eval === false
    Player.lives -= 1
  end
end