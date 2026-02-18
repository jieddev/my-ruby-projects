def stock_picker(days)
  lowest_stock_price = 0
  highest_stock_price = 0
  profit = 0
  best_day_to_buy_and_sell = []
  profits = []
  days_passed = []

  days.each_with_index do |day, index|
    sell_day_index = days.index(day)

    days.each do |sell_day|
        # profits.push([day, sell_day, (sell_day - day)]) 
        sell_day = days[sell_day_index]
        profits.push([day, sell_day, (sell_day - day)]) 
        if sell_day_index < 8
          sell_day_index += 1
        end
    end
  end

  positive_profits = profits.select { |profit| profit[2] == profit[2].abs }
  no_zero_profits = positive_profits.filter { |profit| profit[2] != 0}

  profit_each_day = no_zero_profits.map { |sub_array| sub_array[2]}
  biggest_profit = profit_each_day.max()

  buy_and_sell_day_with_biggest_profit = no_zero_profits.select { |sub_array| sub_array[2] == biggest_profit}

  # return best_day_to_buy_and_sell
  # return profits
  # return positive_profits
  # return no_zero_profits
  # return profit_each_day
  # return biggest_profit
  # return buy_and_sell_day_with_biggest_profit

end

p stock_picker([17,3,6,9,15,8,6,1,10])