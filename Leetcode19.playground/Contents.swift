class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var total = nums.reduce(0, +)
        var sum = 0

        for (index, num) in nums.enumerated() {
            if sum == total - sum - num {
                return index
            }
            sum += num
        }
        return -1
    }
}
