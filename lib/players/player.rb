class Player 
  def initialize(player_name)
    @player_name = player_name
    
  end

  def prompt_player_move()
    print "What is your move #{@player_name}? "
    player_move = gets.chomp

    if player_move == "Quit"
      return "Game Terminated!"
    else
      return player_move
    end
  end



end
