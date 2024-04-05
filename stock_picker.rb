def stock_picker(prices)
	best_selling_price = prices.max
	included_prices = prices
	while best_selling_price == prices[0]
		included_prices = prices.drop(1)
		p included_prices
		best_selling_price = included_prices.max
	end
	sell_date = prices.rindex(best_selling_price)
	
	best_buying_price = prices.min
	while best_buying_price == prices[-1]
		included_prices.pop
		best_buying_price = prices.min
	end
	sell_range = included_prices.slice(0, sell_date)
	buy = included_prices.select{|date|
								date == sell_range.min}
	buy_date = prices.index(buy.join.to_i)
	return [buy_date, sell_date]
end


p stock_picker([30,40,6,9,20,8,6,10,22])