class Solution {
   func productExceptSelf(_ nums: [Int]) -> [Int] {
    
        var result: [Int] = Array(repeating: 1, count: nums.count)
        var left = 1, right = 1

        for index in 0..<nums.count {
            result[index] *= left
            left *= nums[index]
            result[nums.count - 1 - index] *= right
            right *= nums[nums.count - 1 - index]
 }
        return result
    }
}
