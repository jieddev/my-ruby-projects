def stock_picker(days)
  lowest_stock_price = 0
  highest_stock_price = 0
  profit = 0
  best_day_to_buy_and_sell = []
  profits = []

  days.each_with_index do |day, index|
    days.each_with_index do |sell_day, index|
      profits.push(day - sell_day) 
  
    end
  end


  # return best_day_to_buy_and_sell
  return profits
end

p stock_picker([17,3,6,9,15,8,6,1,10])