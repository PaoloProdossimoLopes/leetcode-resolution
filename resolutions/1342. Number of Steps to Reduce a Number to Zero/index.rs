impl Solution {
  pub fn number_of_steps(num: i32) -> i32 {
     let mut count_steps = 0;
     let mut current_value = num;

     while current_value > 0 {
        if current_value % 2 == 0 {
          current_value = current_value / 2;
        } else {
          current_value -= 1;
        }
        count_steps += 1;
     }

     return count_steps;
  }
}