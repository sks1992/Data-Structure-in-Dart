// 121. Best Time to Buy and Sell Stock
// You are given an array prices where prices[i] is the price of a given stock
// on the ith day.
// You want to maximize your profit by choosing a single day to buy one stock
// and choosing a different day in the future to sell that stock.
// Return the maximum profit you can achieve from this transaction. If you
// cannot achieve any profit, return 0.
//
// Example 1:
//
// Input: prices = [7,1,5,3,6,4]
// Output: 5
// Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6),
// profit = 6-1 = 5.
// Note that buying on day 2 and selling on day 1 is not allowed because you
// must buy before you sell.
//
// Example 2:
//
// Input: prices = [7,6,4,3,1]
// Output: 0
// Explanation: In this case, no transactions are done and the max profit = 0.
//
// Constraints:
//
// 1 <= prices.length <= 105
// 0 <= prices[i] <= 104

import 'dart:math';

void main() {
  List<int> stock = [7, 1, 5, 3, 6, 4,8];
  List<int> stock1 = [7, 6, 4, 3, 1];
  //print("max profit is:${maxProfit(stock)}");
  maxProfit(stock);
}

void maxProfit(List<int> prices) {
  var maxProfit = 0;
  var minPrice = prices.first;

  var startDay=0;
  var lastDay =0;
  for (int i = 0; i < prices.length; i++) {
    minPrice = min(minPrice, prices[i]);
    if(minPrice == prices[i]){
      startDay =i;
    }
    final profit = prices[i] - minPrice;
    maxProfit = max(profit, maxProfit);
    if(maxProfit==profit){
      lastDay =i;
    }
  }

  if(maxProfit<0) {
    print("Not get any profit");
  }else {
    if(startDay==lastDay) {print("No trnsection Found");}else {
      print("start day index of stock buy:  $startDay");
      print("day of stock sell :$lastDay");
      print("max profir is: $maxProfit");
    }
  }
  //return maxProfit < 0 ? 0 : maxProfit;
}

/*
void main() {
  List<int> stock = [7, 1, 5, 3, 6, 4];
  print(maxProfit(stock));
}

int maxProfit(List<int> prices) {

  var maxProfit = 0;
  var minPrice = prices.first;

  for (int i = 0; i < prices.length; i++) {
    i=0=7  i=1=1 i=2=5 i=3=3 i=4=6 i=5=4
    minPrice = min(minPrice, prices[i]); 7,7=7  \\ 7,1 =1 //1,5 =1 //1,3=1 //1,6 =1 //1,4=1

    final profit = prices[i] - minPrice; 7-7 =0 //1-1=0 //5-1 =4 //3-1=2 //6-1=5 //4-1=3
    maxProfit = max(profit, maxProfit); 0 ,0 =0 //0,0=0 //0,4 =4 //4,2=4 //4,5 =5 //3,5 =5
  }

  return maxProfit < 0 ? 0 : maxProfit; 5
}
* */
