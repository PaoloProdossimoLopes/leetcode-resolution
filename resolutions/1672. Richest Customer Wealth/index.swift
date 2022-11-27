class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max = 0
        for account in accounts {
            
            var costumerSum = 0
            for value in account {
                costumerSum += value
            }
            
            if max < costumerSum {
                max = costumerSum
            }
        }
        
        return max
    }
}