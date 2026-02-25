# require "minitest/autorun"
# require_relative "main"

# class Test < Minitest::Test 
#   def setup 
#     @calculator = Calculator.new
#   end


guess_to_color_balls = ["🔴", "🔵", "🟢", "🟡"]
color_code_to_color_balls = ["🔴", "🟠", "🟡", "🔴"]

def give_feedback_based_on_guess(guess_to_color_balls, color_code_to_color_balls)
  # Initialize an array to store the feedback
  # Get the guess color code
  # 
  # Push white color if a color peg exist in the guess_to_color_balls but in wrong index
  # Push red color if a color peg is the right color and in the right index
  # If a guessed color is not a part of the code

  # Return the array feedback

  feedback = []

  guess_to_color_balls.each_with_index do |guess, index_of_guess|
    if guess == color_code_to_color_balls[index_of_guess]
      feedback << "🔴"
    else 
      
    end
  end

  guess_to_color_balls.each_with_index do |guess, index_of_guess|
    puts guess 
    if color_code_to_color_balls.any?(guess)  
      feedback << "⚪" 
    end
  end

  return feedback 
end

give_feedback_based_on_guess(guess_to_color_balls, color_code_to_color_balls)
