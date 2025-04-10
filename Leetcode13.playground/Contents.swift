class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var unpaired = [Int: Int]()
        var result = 0

        for num in nums {
            let pair = k - num
            if let count = unpaired[pair], count > 0 {
                result += 1
                unpaired[pair] = count - 1
            } else {
                unpaired[num, default: 0] += 1
            }


        }

    return result

    }
}
