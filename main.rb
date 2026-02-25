require_relative 'lib/game'

colors = {
  1 => "🔴",
  2 => "🔵",
  3 => "🟢",
  4 => "🟡",
  5 => "🟣",
  6 => "🟠", 
  "1" => "🔴",
  "2" => "🔵",
  "3" => "🟢",
  "4" => "🟡",
  "5" => "🟣",
  "6" => "🟠"
}

attempts = 12

game = Game.new(colors, attempts)

puts game.colors

game.start_game