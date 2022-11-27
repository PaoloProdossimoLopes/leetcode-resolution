/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = 1
        var nextNode = head?.next
        while let currentNode = nextNode {
            nextNode = currentNode.next
            count += 1
        }
        
        let half = count / 2
        var middleNode = head
        for index in 1 ... count {
            
            if (count == 1 && index == 1) {
                break
            }
            
             middleNode = middleNode?.next
            if index == half {
                break
            }
        }
        return middleNode
    }
}