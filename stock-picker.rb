stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(price_array)
    result = {
        :buy_date => nil,
        :sell_date => nil,
        :profit => 0
    }
    possible_trades = {}
    trade_num = 0
    price_array.each_with_index do |price, index|
        i = index+1
        while i<price_array.length
            possible_trades[trade_num] = {}
            possible_trades[trade_num][:buy_date] = index
            possible_trades[trade_num][:sell_date] = i
            possible_trades[trade_num][:profit] = (price_array[i] - price)
            i += 1
            trade_num += 1
        end
    end
    possible_trades.each do |key, value|
        if value[:profit] > result[:profit]
            result = value
        end
    end
    return result
end

stock_picker(stocks)
