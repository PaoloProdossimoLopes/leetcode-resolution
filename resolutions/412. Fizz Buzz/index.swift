class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        
        var container = [String]()
        let range = 1 ... n
        for number in range {
            
            let isDivisibleByThree = (number % 3 == 0)
            let isDivisibleByFive = (number % 5 == 0)
            
            if isDivisibleByThree && isDivisibleByFive {
                container.append("FizzBuzz")
                continue
            } else if isDivisibleByThree {
                container.append("Fizz")
                continue
            } else if isDivisibleByFive {
                container.append("Buzz")
                continue
            } else {
                container.append(String(number))
                continue
            }
        }
        
        return container
    
    }
}