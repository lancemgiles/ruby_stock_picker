def stock_picker(prices)
	# for each price, find the highest number
	# see if there is an price preceding the highest one
	# if so, compare the difference between the highest price
	# and the price before with the second highest price

	# find the highest number
	sell = prices.max
	included_prices = []
	# is it the first element?
	if sell == prices[0]
		included_prices = prices.drop(1)
		sell = included_prices.max
	end
	sell_date = prices.index(sell)
	sell_range = included_prices.slice(0, sell_date)
	buy = included_prices.select{|date|
								date == sell_range.min}
	buy_date = prices.index(buy.join.to_i)
	# [prices.find_index(buy_date), prices.find_index(sell_date)]
	return [buy_date, sell_date]
end


p stock_picker([17,3,6,9,15,8,6,1,10])