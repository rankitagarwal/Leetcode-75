class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var s = ""
        var count = 1
        for i in 1..<chars.count {
            if chars[i] == chars[i - 1] {
                count += 1
            } else {
                s += "\(chars[i - 1])" + (count > 1 ? "\(count)" : "")
                count = 1
            }
        }
        s += "\(chars.last!)" + (count > 1 ? "\(count)" : "")
        chars = Array(s)
        return chars.count
    }
}
