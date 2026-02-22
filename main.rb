def computer_create_code()
  color_code = []

  4.times do 
    color_code.push(rand(1..6))
    
  end

  return color_code

end

def convert_array_to_color_balls(color_code)
  colors = {
    1 => "🔴",
    2 => "🔵",
    3 => "🟢",
    4 => "🟡",
    5 => "🟣",
    6 => "🟠"
  }

  converted_color = []
  
  color_code.each do |color_number|
    converted_color.push(colors[color_number])
  end

  return converted_color

end

puts "--- Mastermind Minigame ---"
puts ""
color_code = computer_create_code
p convert_array_to_color_balls(color_code)
# p color_code
