class Board
  def initialize(first_row, second_row, third_row)
    @first_row = first_row
    @second_row = second_row
    @third_row = third_row 
  end


  def update_board(move)

    if move.between?(1,3)
      @first_row[move-1].replace(["X"])
    elsif move.between?(4, 6)
      @second_row[move-4].replace(["X"])
    elsif move.between?(7, 9)
      @third_row[move-7].replace(["X"])

    end


    p @first_row 
    p @second_row
    p @third_row

    
  end


end
