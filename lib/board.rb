class Board
  def initialize(first_row, second_row, third_row)
    @first_row = first_row
    @second_row = second_row
    @third_row = third_row 
  end


  def update_board(move)
    # first_row = [[" "],[" "],[" "]]
    # second_row = [[" "],[" "],[" "]]
    # third_row = [[" "],[" "],[" "]]

    if move.between?(1,3)
      @first_row[move-1].replace(["X"])
    end

    p @first_row 
    p @second_row
    p @third_row

    # p @first_row
    # p @second_row
    # p @third_row
  end


end
