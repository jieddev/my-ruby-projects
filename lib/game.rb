class Game
  def initialize(colors, attempts)
    @colors = colors
    @attempts = attempts  
  end

  def start_game()
    @color_code = computer_create_code()
    
    @color_code_to_color_balls = convert_array_to_color_balls(@color_code, @colors)

    @attempts.times do |attempt_left|
      puts "Attempt ##{attempt_left + 1}" 
      print "Please enter your guess: "
      @guess = gets.chomp

      @guess_to_array = @guess.split("")

      @guess_to_color_balls = convert_array_to_color_balls(@guess_to_array, @colors)
      
      puts "Your guess is: #{@guess_to_color_balls}" 

      puts " "

      @win = check_if_guess_matches_with_code(@guess_to_color_balls, @color_code_to_color_balls)

      if @win == true 
        break
      end


      @feedback = give_feedback_based_on_guess(@guess_to_color_balls, @color_code_to_color_balls)
      puts "Feedback: #{@feedback}"

    end

    puts "The color code is: #{@color_code_to_color_balls}"  

  end

  def computer_create_code()
    @color_code = []
    4.times do 
      @color_code.push(rand(1..6))
      
    end
    return @color_code
  end

  def convert_array_to_color_balls(color_code, colors)
    @converted_color = []
    
    color_code.each do |color_number|
      @converted_color.push(colors[color_number])
    end

    return @converted_color
  end

  def check_if_guess_matches_with_code(guess_to_color_code, color_code_to_color_balls)
    
    @win = true

    if guess_to_color_code == color_code_to_color_balls
      puts " "
      puts "That's Bingo! You Win! "

      return @win
    end

  end

  def give_feedback_based_on_guess(guess_to_color_balls, color_code_to_color_balls)
    @feedback = []

    guess_to_color_balls.each_with_index do |guess, index_of_guess|
      if guess == color_code_to_color_balls[index_of_guess]
        @feedback << '🔴'
      elsif color_code_to_color_balls.any?(guess)  
        @feedback << '⚪'
        
      end
    end

    return @feedback 
  end



end
