class Board
  def initialize(first_row, second_row, third_row)
    @first_row = first_row
    @second_row = second_row
    @third_row = third_row 
  end


  def update_board_for_player_one(move)

    move_to_integer = move.to_i()

    if move_to_integer.between?(1,3)
      @first_row[move_to_integer-1].replace(["X"])
    elsif move_to_integer.between?(4, 6)
      @second_row[move_to_integer-4].replace(["X"])
    elsif move_to_integer.between?(7, 9)
      @third_row[move_to_integer-7].replace(["X"])

    end


    p @first_row 
    p @second_row
    p @third_row

    
  end

  def update_board_for_player_two(move)

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



end
