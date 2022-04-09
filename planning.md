# PLANNING

We will need:

# Player Class
- We will need a player class with 
- This class will initialize with a @name number of @lives , with the name as the first parameter.
- this player class will also need a method to take away a life, eg:
if @lives > 0, then @lives -= 1 els
- will need attr_accessor :name, :lives

# Question class

- We will need a class for the questions. 
- This class will have a method 'question', no parameters needed
- Need to create two random numbers using rand eg. num 1 = rand(1..50)
- puts a question asking "what is #{num1} plus #{num2}
- define an answer (answer = num1 + num2)
- get a user answer using user-answer = $stdin.gets.chomp.to_i 
- evaluate if the answer is true or not and puts the approproiate message, eg. "if answer === user-answer .... "good job" els "bad job"

# Turn class

- This class should manage the current player
- We need a turn class to show who's player's turn it is and ask a new question
- needs to require the Question class and define a Question.new eg. new_question = Question.new()
- if the if the new_question.question === false, it needs to call the method to take a life away in the player class. eg. player.lost_life

# Game Class 

- This class should contain the loop
- We need a game class to create a new game with 2 x players 
- Game class needs to initialize with a parameter which takes in an array of two players then sets them, and also a current player. 
- @player 1 = Player.new(players[0])
- @player 2 = Player.new(players[1])
- current player = player1
- I guess these need to be attr_accessor
- Need a method to start a game 
- within which is another method which asks a question to current player, then changes current player to the other player.
- while both players are above 0 lives, keep looping that method
- a game over method which checks if player1.lives = 0, then player 2 is the winner, else if player2.lives = 0, player 1 wins. 
- Finally, winner.name Wins and end the game

# Main.rb
- Will need an index.rb to call all of the classes, this will require the game class.
- players = ARGV
- new_game = Game.new(players) 
- Then call the new game: 
- new_game.start
- new_game.end
