def stock_picker(prices)
	# for each price, find the highest number
	# see if there is an price preceding the highest one
	# if so, compare the difference between the highest price
	# and the price before with the second highest price

	# find the highest number
	best_selling_price = prices.max
	included_prices = prices
	# is it the first element?
	if best_selling_price == prices[0]
		included_prices = prices.drop(1)
		best_selling_price = included_prices.max
	end
	sell_date = prices.rindex(best_selling_price)
	

	best_buying_price = prices.min
	if best_buying_price == prices[-1]
		included_prices.pop
		best_buying_price = prices.min
	end
	sell_range = included_prices.slice(0, sell_date)
	# if prices.index(best_buying_price) > sell_range[-1]
	# 	included_prices.delete(best_buying_price)
	# 	best_buying_price = included_prices.min
	# end

	
	buy = included_prices.select{|date|
								date == sell_range.min}
	buy_date = prices.index(buy.join.to_i)
	return [buy_date, sell_date]
	
end


p stock_picker([1,3,6,9,20,8,6,10,22])