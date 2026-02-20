require 'colorize'

require_relative 'lib/board'
# require_relative 'lib/players/player_one'
# require_relative 'lib/players/player_two'
require_relative 'lib/players/player'

puts "--- Tic Tac Toe built in Ruby by Jieddev --- ".colorize(:red)


print "Player 1 Name: "
player_one_name = gets.chomp
print "Player 2 Name: "
player_two_name = gets.chomp


player_one = Player.new(player_one_name)
player_two = Player.new(player_two_name)
board = Board.new([[" "],[" "],[" "]], [[" "],[" "],[" "]], [[" "],[" "],[" "]])

move_one = player_one.prompt_player_move()

board.update_board_for_player_one(move_one)

move_two = player_two.prompt_player_move

board.update_board_for_player_two(move_two)

move_three = player_one.prompt_player_move()

board.update_board_for_player_one(move_three)

move_four = player_two.prompt_player_move()

board.update_board_for_player_two(move_four)

move_five = player_one.prompt_player_move()

board.update_board_for_player_one(move_five)

move_six = player_two.prompt_player_move()

board.update_board_for_player_two(move_six)

move_seven = player_one.prompt_player_move()

board.update_board_for_player_one(move_seven)

move_eight = player_two.prompt_player_move()

board.update_board_for_player_two(move_eight)

move_nine = player_one.prompt_player_move()

board.update_board_for_player_one(move_nine)