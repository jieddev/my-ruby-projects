class Board

  @unavailable_tile = []

  def self.unavailable_tile
    @unavailable_tile
  end

  
  def initialize(first_row, second_row, third_row)
    @first_row = first_row
    @second_row = second_row
    @third_row = third_row 
    
  end


  def update_board_for_player_one(move)
    move_to_integer = move.to_i()

    # p Board.unavailable_tile

    if Board.unavailable_tile.include?(move_to_integer)
      p "Sorry but that move is taken"
    else
      Board.unavailable_tile.push(move_to_integer)
      if move_to_integer.between?(1,3)
        @first_row[move_to_integer-1].replace(["X"])
      elsif move_to_integer.between?(4, 6)
        @second_row[move_to_integer-4].replace(["X"])
      elsif move_to_integer.between?(7, 9)
        @third_row[move_to_integer-7].replace(["X"])

      end 
    end

    p @first_row 
    p @second_row
    p @third_row

    
  end

  def update_board_for_player_two(move)
    move_to_integer = move.to_i()

    move_to_integer = move.to_i()

    if move_to_integer.between?(1,3)
      @first_row[move_to_integer-1].replace(["O"])
    elsif move_to_integer.between?(4, 6)
      @second_row[move_to_integer-4].replace(["O"])
    elsif move_to_integer.between?(7, 9)
      @third_row[move_to_integer-7].replace(["O"])

    end

    p @first_row 
    p @second_row
    p @third_row

  end

  def check_if_player_one_won()
    # player_one_win = false
    win_combinations = [
      [1,2,3],
      [4,5,6],
      [7,8,9],
      [1,4,7],
      [2,5,8],
      [3,6,9],
      [1,5,9],
      [3,5,7]
    ]
    
    if win_combinations.any? do |combo|
      combo.all? { |number| Board.unavailable_tile.include?(number)}
    end
      puts "YOU WON! Player One"
      player_one_win = true
      return player_one_win
    end

  end

  def check_if_player_two_won()
    # player_one_win = false
    win_combinations = [
      [1,2,3],
      [4,5,6],
      [7,8,9],
      [1,4,7],
      [2,5,8],
      [3,6,9],
      [1,5,9],
      [3,5,7]
    ]
    
    if win_combinations.any? do |combo|
      combo.all? { |number| Board.unavailable_tile.include?(number)}
    end
      puts "YOU WON! Player Two"
      player_one_win = true
      return player_one_win
    end

  end


end
