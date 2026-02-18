def stock_picker(days)
  profit = 0
  profits = []
  days_passed = []
  output = []

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

  no_zero_profits = filter_profit_to_return_positive_non_zero_profit(profits)

  biggest_profit = find_the_highest_profit(no_zero_profits)

  best_day_to_buy_and_sell = find_best_day_to_buy_and_sell(biggest_profit, no_zero_profits)

  # return best_day_to_buy_and_sell

  best_day_to_buy = find_index_of_best_day_to_buy(days, best_day_to_buy_and_sell)
  best_day_to_sell = find_index_of_best_day_to_sell(days, best_day_to_buy_and_sell)

  output << best_day_to_buy
  output << best_day_to_sell
  return output

end

def filter_profit_to_return_positive_non_zero_profit(profits) 
  positive_profits = profits.select { |profit| profit[2] == profit[2].abs }
  return no_zero_profits = positive_profits.filter { |profit| profit[2] != 0}  

end

def find_the_highest_profit(no_zero_profits)
  profit_each_day = no_zero_profits.map { |sub_array| sub_array[2]}
  biggest_profit = profit_each_day.max()

  return biggest_profit
end

def find_best_day_to_buy_and_sell(biggest_profit, no_zero_profits)
  buy_and_sell_day_with_biggest_profit = no_zero_profits.select { |sub_array| sub_array[2] == biggest_profit}
  best_day_to_buy_and_sell = buy_and_sell_day_with_biggest_profit[0]

  best_day_to_buy_and_sell.delete_at(2)

  return best_day_to_buy_and_sell
end

def find_index_of_best_day_to_buy(days, best_day_to_buy_and_sell) 
  best_day_to_buy = days.index(best_day_to_buy_and_sell[0])
  return best_day_to_buy
end

def find_index_of_best_day_to_sell(days, best_day_to_buy_and_sell)
  best_day_to_sell = days.index(best_day_to_buy_and_sell[1])
  return best_day_to_sell
end



p stock_picker([17,3,6,9,15,8,6,1,10])