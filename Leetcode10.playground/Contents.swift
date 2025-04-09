class Solution {
    func moveZeroes(_ nums: inout [Int]) {
    var ans:[Int] = []
    for i in nums {
        if i != 0 {
        ans.append(i)
        }
    }
    let zeros = nums.count - ans.count

    for i in 0..<zeros{
        ans.append(0)
    }
    
    nums = ans
    }
}
