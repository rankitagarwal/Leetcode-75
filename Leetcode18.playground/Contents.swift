class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var result = 0
        var sum = 0
        for num in gain {
            sum += num
            result = max(result, sum)
        }
        return result
    }
}
