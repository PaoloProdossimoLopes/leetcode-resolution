impl Solution {
  pub fn running_sum(nums: Vec<i32>) -> Vec<i32> {
      let mut storage = 0;
      let mut result: Vec<i32> = Vec::new();
      for number in nums {
          storage += number;
          result.push(storage);
      }
      return result;
  }
}