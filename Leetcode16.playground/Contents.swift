class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var flipLeft = k
        var maxLength = 0
        var lp = 0
        var rp = 0

        while rp < nums.count {
            if nums[rp] == 1 {
                rp += 1
                continue
            }

            if nums[rp] == 0 && flipLeft != 0 {
                rp += 1
                flipLeft -= 1
                continue
            }

            let newMax = (rp - lp)

            maxLength = max(newMax, maxLength)

            if nums[rp] == 0 && flipLeft == 0 {
                if nums[lp] == 0 {
                    lp += 1
                    flipLeft += 1
                } else {
                    lp += 1
                }
            }

        }
            let newMax = rp - lp
            return max(newMax, maxLength)
    }
}
