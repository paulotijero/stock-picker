def stock_picker(arr)
  max, best_days = 0, [0,0]
  0.upto(arr.size - 1) do |buy| 
    buy.upto(arr.size - 1) do |sell| 
      if arr[sell] - arr[buy] > max 
        max = arr[sell] - arr[buy]
        best_days = [buy, sell] 
      end 
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1, 4]
p stock_picker([11,92,75,13,25,47,87,22,89,40]) #=> [0, 1]
p stock_picker([1,5,27,27,11,10,3,38,23,17]) #=> [0, 7]
p stock_picker([13,3,7,29,18,15,34,19,2,35]) #=> [8, 9]