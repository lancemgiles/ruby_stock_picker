def stock_picker(prices)
	# for each price, find the highest number
	# see if there is an price preceding the highest one
	# if so, compare the difference between the highest price
	# and the price before with the second highest price

	# find the highest number
	high = prices.max
	# is it the first element?
	if high == prices[0]
		prices.shift
		high = prices.max
	end
	high
end


puts stock_picker([17,3,6,9,15,8,6,1,10])