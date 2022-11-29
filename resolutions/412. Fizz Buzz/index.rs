impl Solution {
  pub fn fizz_buzz(n: i32) -> Vec<String> {
      let mut result: Vec<String> = Vec::new();

      for number in (1..=n) {
        let isDivideByThree = number % 3 == 0;
        let isDivideByFive = number % 5 == 0;

        if isDivideByThree && isDivideByFive {
            result.push(String::from("FizzBuzz"));
        } else if isDivideByThree {
            result.push(String::from("Fizz"));
        } else if isDivideByFive {
            result.push(String::from("Buzz"));
        } else {
            result.push(number.to_string());
        }
      }
      
      return result
  }
}