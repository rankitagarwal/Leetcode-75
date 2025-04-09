class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count > t.count { return false }

        var stack = s

        for letter in t {
            if letter == stack.first {
                stack.removeFirst()
                if stack.count == 0 { return true }
            }
        }
        return s.count == 0 ? true : false

    }
}
