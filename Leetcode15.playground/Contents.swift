class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {

        let vowels: Set<Character> = ["a","e","i","o","u"]
        let chars = Array(s)

        var total = 0
        for i in 0..<k {
            if vowels.contains(chars[i]) {
                total = total + 1
            }
        }

        var maxTotal = total

        for i in k..<chars.count {
            if vowels.contains(chars[i]) {
                total += 1
            }
            if vowels.contains(chars[i - k]) {
                total -= 1
            }
            maxTotal = max(maxTotal, total)
        }
    return maxTotal
    }
}
