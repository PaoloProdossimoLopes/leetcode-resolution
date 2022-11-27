class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var numberOfSteps = 0
        var currentValue = num
        
        while true {
            let isDivisibleByTwo = (currentValue % 2 == 0)
            let areadyZero = currentValue == 0
            
            if areadyZero {
                break
            } else if isDivisibleByTwo {
                currentValue /= 2
            } else {
                currentValue -= 1
            }
            
            numberOfSteps += 1
        }
        
        return numberOfSteps
    }
}