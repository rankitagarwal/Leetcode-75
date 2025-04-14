class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let nums1Set = Set(nums1)
        let nums2Set = Set(nums2)

        return [Array(nums1Set.subtracting(nums2Set)), Array(nums2Set.subtracting(nums1Set))]
    }
}
