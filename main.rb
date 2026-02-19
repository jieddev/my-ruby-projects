require 'colorize'

require_relative 'lib/board'
# require_relative 'lib/players/player_one'
# require_relative 'lib/players/player_two'
require_relative 'lib/players/player'

puts "--- Tic Tac Toe built in Ruby by Jieddev --- ".colorize(:red)

# board_1 = Board.new()

# board_1.update_board()

print "Player 1 Name: "
player_one_name = gets.chomp
print "Player 2 Name: "
player_two_name = gets.chomp


player_one = Player.new(player_one_name)
player_two = Player.new(player_two_name)
board = Board.new([[" "],[" "],[" "]], [[" "],[" "],[" "]], [[" "],[" "],[" "]])

move_one = player_one.prompt_player_move()

board.update_board(move_one.to_i)

move_two = player_two.prompt_player_move

board.update_board(move_two.to_i)