def stock_picker (prices)
  max_profit= 0
  buy_day= 0
  sell_day= 1
  buying_range = 0..prices.length - 1 #cannot buy on last day

  buying_range.each do |bp|
    (bp + 1..prices.length - 1).each do |sp| #selling range
    #iterate through each day; setting selling range as a variable
    #means range cannot be stepped through
      current_profit = prices[sp]-prices[bp]
      if current_profit > max_profit
  	   	max_profit = current_profit
        buy_day = bp
        sell_day = sp    
      end
    end
 end
 return [buy_day, sell_day]
end

p stock_picker([30,40,6,9,20,8,6,10,22])