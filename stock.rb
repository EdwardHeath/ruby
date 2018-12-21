print "Enter array of stock prices: "
prices = gets.chomp

if prices == ""
    prices = Array.new(15) { rand(1...999) } 
    puts prices.inspect
else
    prices[1...-1].split(',').collect { |n| n.to_i }
end

buy = 0
sell = 0   
profit = 0

for x in 0..prices.size-2
    for y in x+1..prices.size-1
        if prices[y] - prices[x] > profit
            buy = x
            sell = y
            profit = prices[y] - prices[x]
        end
    end
end

puts "Buy on day #{buy}, sell on day #{sell}."