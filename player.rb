class Player
  attr_reader :name, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost_life()
    @lives -= 1
    @lives
  end

end
# We will need a player class with 
# - This class will initialize with a @name number of @lives , with the name as the first parameter.
# - this player class will also need a method to take away a life, eg:
# if @lives > 0, then @lives -= 1 els
# - will need attr_accessor :name, :lives