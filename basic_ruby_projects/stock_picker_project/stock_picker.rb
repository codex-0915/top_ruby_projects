##########
# @filename             stock_picker.rb
#
# @description          Implement a method #stock_picker that takes in an array of stock prices, 
#                       one for each hypothetical day. It should return a pair of days representing 
#                       the best day to buy and the best day to sell. Days start at 0.
#
# @author               codex-0915
#

def stock_picker(stock_prices)
    # initialize the variables
    min_price_index = 0
    min_price = stock_prices[min_price_index]
    profit = 0
    best_result = [0,0]

    stock_prices.each_with_index do |stock_price, current_day|
        # Update the best day to buy
        if min_price > stock_price
            min_price_index = current_day
            min_price = stock_prices[min_price_index]
            # Proceed to next loop, skips the code after this block
            next
        end
        # Calculate and compare the profits per each dip and rip
        if profit < stock_price - min_price
            profit = stock_price - min_price_index
            best_result = [min_price_index, current_day]
        end
    end
 
    return best_result;
end

# Sample Test
sample_stock_price_data = [17,3,6,9,15,8,6,1,10]
puts(stock_picker(sample_stock_price_data))

########## End of File