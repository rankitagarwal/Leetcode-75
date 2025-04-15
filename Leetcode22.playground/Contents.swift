class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        
        if word1.count != word2.count { return false }

        let w1 = Array(word1)
        let w2 = Array(word2)

        var dict1: [Character: Int] = [:]
        var dict2: [Character: Int] = [:]


        for i in 0..<w1.count {
            dict1[w1[i], default: 0] += 1
            dict2[w2[i], default: 0] += 1
        }

        if dict1.keys != dict2.keys || dict1.values.sorted() != dict2.values.sorted() {
            return false
        }

        return true

    }
}
