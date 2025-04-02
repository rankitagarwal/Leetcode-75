import UIKit

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        let arr1: [Character] = Array(word1).compactMap { $0 as? Character }
        let arr2: [Character] = Array(word2).compactMap { $0 as? Character }
        print(arr1)
        let maxLen = max(arr1.count, arr2.count)
        var i = 0
        var result = ""
        while i < maxLen{
            if i < arr1.count {
                result.append(arr1[i])
            }
            if i < arr2.count {
                result.append(arr2[i])
            }
            i += 1
        }
        return result
    }
}
