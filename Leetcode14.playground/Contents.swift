class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var maxAvg: Double = 0
        var sum: Double = 0
        for i in 0..<k {
            sum += Double(nums[i])
        }

        maxAvg = Double(sum) / Double(k)
        
        for j in k..<nums.count {
            sum = sum + Double(nums[j] - nums[j - k])
            maxAvg = max(maxAvg, sum / Double(k))
        }

        return maxAvg
    }
}
