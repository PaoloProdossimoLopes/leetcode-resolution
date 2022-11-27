impl Solution {
  pub fn maximum_wealth(accounts: Vec<Vec<i32>>) -> i32 {
      let mut max = 0;
      for account in accounts {
          
          let mut costumerSum = 0;
          for value in account {
              costumerSum += value;
          }
          
          if max < costumerSum {
              max = costumerSum;
          }
      }
      
      return max;
  }
}