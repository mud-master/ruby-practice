def stock_picker(arr)
    best_start_idx = 0
    best_end_idx = -1
    max_profit = 0

    test_start = 0

    arr[0, arr.length - 1].each_with_index do |val_start, idx_start| # loop for testing the start
        arr[1 + idx_start, arr.length].each_with_index do |val_end, idx_end| # loop for testing the end
            if (val_end - val_start > max_profit)
                max_profit = val_end - val_start
                best_start_idx = idx_start
                best_end_idx = idx_end + 1 + idx_start
            end
        end
    end


    return [best_start_idx, best_end_idx]
end

p stock_picker([17,3,6,9,15,8,6,1,10])