class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var container = [Int]()
        var memory = 0
        
        let listLegth = nums.count
        let loopRange = 0..<listLegth
        for index in loopRange {
            memory += nums[index]
            container.append(memory)         
        }
        
        return container
    }
}