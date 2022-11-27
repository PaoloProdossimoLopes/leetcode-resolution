class Solution:
    def maximumWealth(self, accounts: list[list[int]]) -> int:
        max = 0
        for account in accounts:
            
            costumerSum = 0
            for value in account:
                costumerSum += value
            
            if max < costumerSum:
                max = costumerSum
        
        return max