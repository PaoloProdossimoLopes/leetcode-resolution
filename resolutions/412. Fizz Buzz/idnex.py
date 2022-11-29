class Solution:
    def fizzBuzz(self, n: int) -> list[str]:
        result = []
        for i in range(1, n + 1):
          isDivisibleByThree = i % 3 == 0
          isDivisibleByFive = i % 5 == 0

          if isDivisibleByFive and isDivisibleByThree:
            result.append("FizzBuzz")
          elif isDivisibleByThree:
            result.append("Fizz")
          elif isDivisibleByFive:
            result.append("Buzz")
          else:
            result.append(str(i))
        return result