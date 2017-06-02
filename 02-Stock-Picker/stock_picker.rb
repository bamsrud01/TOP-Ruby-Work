def stock_picker (prices)

  # Initial values
  profit = 0
  buy_day = 0
  sell_day = 0

  # Compare all possible combinations
  prices.each_with_index do |buy_value, buy_index|
    prices.each_with_index do |sell_value, sell_index|

      # Determine the potential profit if sold on this date
      potential = sell_value - buy_value
      # The buy date MUST be before the sell date
      # Check to see if potential profit is greater than existing greatest profit
      if buy_index < sell_index && potential > profit
        # Assign values accordingly
        profit = potential
        buy_day = buy_index
        sell_day = sell_index
      end
    end
  end
  return [buy_day, sell_day]
end
