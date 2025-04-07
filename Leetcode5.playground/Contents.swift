class Solution {
    func reverseVowels(_ s: String) -> String {
        var vowels: Set<Character> = ["a","e","i","o","u", "A","E","I","O","U"]

        var arr = Array(s)

        var i = 0
        var j = arr.count - 1

        while i < j {
            if vowels.contains(arr[i]) && vowels.contains(arr[j]) {
                arr.swapAt(i, j)
                i += 1
                j -= 1
            } else if vowels.contains(arr[i]) {
                j -= 1
            } else if vowels.contains(arr[j]) {
                i += 1
            } else {
                i += 1
                j -= 1
            }
        }

        return String(arr)
    }
}
