require 'colorize'

require_relative 'lib/board'
# require_relative 'lib/players/player_one'
# require_relative 'lib/players/player_two'
require_relative 'lib/players/player'

def check_if_winner_exist?(winner)
  if winner == true
    return 
  end
end


  
  puts "--- Tic Tac Toe built in Ruby by Jieddev --- ".colorize(:red)
  
  
  print "Player 1 Name: "
  player_one_name = gets.chomp
  print "Player 2 Name: "
  player_two_name = gets.chomp
  
  
  player_one = Player.new(player_one_name)
  player_two = Player.new(player_two_name)
  
  player_one_win = false
  
  
  board = Board.new([[" "],[" "],[" "]], [[" "],[" "],[" "]], [[" "],[" "],[" "]])
  
  move_one = player_one.prompt_player_move()
  
  board.update_board_for_player_one(move_one)
  
  move_two = player_two.prompt_player_move
  
  board.update_board_for_player_two(move_two)
  
  move_three = player_one.prompt_player_move()
  
  board.update_board_for_player_one(move_three)
  board.check_if_player_one_won()
  # board.check_if_player_two_won()
  
  move_four = player_two.prompt_player_move()
  
  board.update_board_for_player_two(move_four)
  winner = board.check_if_player_one_won
  check_if_winner_exist?(winner)
  # board.check_if_player_two_won()

  move_five = player_one.prompt_player_move()
  
  board.update_board_for_player_one(move_five)
  winner = board.check_if_player_one_won
  check_if_winner_exist?(winner)
  
  move_six = player_two.prompt_player_move()
  
  board.update_board_for_player_two(move_six)
  winner = board.check_if_player_one_won
  check_if_winner_exist?(winner)

  move_seven = player_one.prompt_player_move()
  
  board.update_board_for_player_one(move_seven)
  winner = board.check_if_player_one_won
  check_if_winner_exist?(winner)
  
  move_eight = player_two.prompt_player_move()
  
  board.update_board_for_player_two(move_eight)
  winner = board.check_if_player_one_won
  check_if_winner_exist?(winner)

  move_nine = player_one.prompt_player_move()
  
  board.update_board_for_player_one(move_nine)
  winner = board.check_if_player_one_won
  check_if_winner_exist?(winner)

