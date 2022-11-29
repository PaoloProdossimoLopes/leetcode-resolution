class Solution:
    def runningSum(self, nums: list[int]) -> list[int]:
        storage = 0
        result = []
        for num in nums:
            storage += num
            result.append(storage)
        return result