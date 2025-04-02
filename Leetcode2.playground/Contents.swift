class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 { return "" }
        return String(str1.prefix(gcd(str1.count, str2.count)))
    }

    func gcd(_ num1: Int,_ num2: Int) -> Int {
        var a = num1
        var b = num2
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
}
