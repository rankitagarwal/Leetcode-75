import UIKit

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = candies.max() ?? 0
        var result: [Bool] = []

        for i in 0..<candies.count {
            if candies[i] + extraCandies >= max {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        return result
    }
}
