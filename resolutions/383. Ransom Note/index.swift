//PROBLEM: https://leetcode.com/problems/ransom-note/

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let magazineOccurencies = listOccurencies(for: magazine)
        let ransomNoteOccurencies = listOccurencies(for: ransomNote)
        
        var isPossible = true
        for (key, value) in ransomNoteOccurencies {
            if isPossible == false {
                break
            }
            
            guard let occurence = magazineOccurencies[key] else {
                isPossible = false
                break
            }
            
            isPossible = occurence >= value
        }
        
        return isPossible
    }
    
    private func listOccurencies(for text: String) -> [Character: Int] {
        var occurences = [Character: Int]()
        for letter in text {
            if let oldOccurencies = occurences[letter] {
                occurences[letter] = oldOccurencies + 1
            } else {
                occurences[letter] = 1
            }
        }
        return occurences
    }
}