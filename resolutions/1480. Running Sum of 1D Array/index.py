class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        storage = 0
        result = []
        for num in nums:
            storage += num
            result.append(storage)
        return result