# **The Odin Project - Ruby Programming**

### **Project: [Stock Picker](stock_picker.rb)**

### **Introduction:**

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
- You need to buy before you can sell
- Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

```irb
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
```

### **Solution:**

    • The function is called with one argument, an array with days of the buy and sell.
    • In the first line declare two variables `max = 0` and `best_days = [0,0]`.
    • The max variable is used for determinate which days return a maximum profit and the `best_days` variable is used to register the day buy and sell fir this maximum profit.
    • So, I loop through the array with the `upto` function from zero to the last position (array.size - 1) and declare the` buy` variable in the callback.
    • According to our condition, we need to buy first, to sell later, so the next iteration starts from the day of purchase until the last position of the array, using the same `upto` function we declare the `sell` variable in the callback.
    • `buy` and` sell` represent the days that are actually the indexes of our arrangement, this will help us to obtain the value of that position (day).
    • To determine a maximum profit we ask if the sale price minus the purchase price is greater than our established maximum profit.
    • If that statement is true, I assign a new value to our `max` variable and record the days of buying and selling in our` best_days` array.
    • This action is repeated until the entire arrangement has been covered.


### **References:**

* [upto (Integer)](https://ruby-doc.org/core-2.5.0/Integer.html#method-i-upto)