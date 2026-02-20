class Player 
  def initialize(player_name)
    @player_name = player_name
    
  end

  def prompt_player_move()
    print "What is your move #{@player_name}? "
    player_move = gets.chomp
    return player_move

  end

  


end
