
prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    buy_day = 0
    sell_day = 0
    min_day = 0
    
    min_price = prices[0]
    max_profit = 0
    best_days = [0, 0]
  
    prices.each_with_index do |price, day|
        if price < min_price
            min_price = price
            min_day = day
        end

        # calculate initial profit
        profit = price - min_price

        if profit > max_profit
            max_profit = profit
            buy_day = min_day
            sell_day = day
            best_days = [buy_day, sell_day]
            

        end
    end
   best_days
end


