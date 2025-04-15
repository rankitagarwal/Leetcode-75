class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        var counts = [[Int]: Int]()

        for row in grid {
            counts[row, default: 0] += 1
        }


        var result = 0
        for i in 0..<grid.count {
            var col = grid.map { $0[i] }

            if let count = counts[col] {
                result += count
            }
        }

        return result
    }
}
