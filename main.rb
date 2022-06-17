=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
=end
def stock_picker(stock_prices)
  result = []
  profit = 0
  while stock_prices.size > 1
    min_p = stock_prices.min
    index_of_min = stock_prices.index(min_p)
    arr = stock_prices[index_of_min..stock_prices.length]
    max_p = arr.max
    difference = max_p - min_p
    if difference > profit
      profit = difference
      result = [stock_prices.index(min_p), stock_prices.index(max_p)]
    end
    stock_prices = stock_prices[0...index_of_min]
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
