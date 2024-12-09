def stock_picker(prices)
  return [] if prices.length < 2

  lowest_price = prices[0]
  buy_day = 0 # Lowest day (index)
  max_profit = 0
  result = []

  prices.each_with_index do |price, day|
    if price < lowest_price
      lowest_price = price
      buy_day = day
    end
    if price - lowest_price > max_profit
      max_profit = price - lowest_price
      result = [buy_day, day]
    end
  end
  
  p "Max profit: #{max_profit}"
  result
end

stock_prices = [17,3,6,9,15,8,6,1,10]

p stock_picker(stock_prices)

# Old code
  # # Second pass: Find highest price after finding lowest price
  # array.each_with_index do |price, day|
  #   if day > buy_day && price > highest_price
  #     highest_price = price
  #     sell_day = day
  #   end
  # end
  # end

    # array.each_with_index do |price, day_reverse|
  #   day = array.length - 1 - day_reverse
  #   while array.index(lowest_price) > array.index(highest_price)
  #     if highest_price < price
  #       highest_price = price
  #       sell_day = day
  #     end
  #   end
  # end