require  './question'
require './player'
require './turn'

class Game

  def initialize()
    setup_players()
    @current_player = @player1
    @players_alive = true
  end

  def setup_players
    puts "what is your first player name?"
    player1 = $stdin.gets.chomp.to_s
    puts "Hi #{player1}?, how about player's 2 name?"
    player2 = $stdin.gets.chomp.to_s 
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def new_turn
    turn = Turn.new(@current_player)
    turn.ask_question
  end

  def start_game 
    while @players_alive 
      new_turn()
      check_lives()
      switch_player()
    end
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def check_lives
    if @current_player.lives == 0
      @loser = @current_player
      @players_alive = false
      end_game()
    end
  end

  def end_game
    switch_player()
    @winner= @current_player.name
    puts "CONGRATULATIONS! #{@winner} you win the game"
  end



end 