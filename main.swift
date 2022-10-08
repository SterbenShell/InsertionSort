

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var list = [] as [String]
var line : String?
repeat {
    line = readLine()
    if line != nil {
        list.append(line!)
    }
} while line != nil

func insertSort(array: [String]) -> [String] {
    var a = array
    var swap = 0
    var totalswap = 0
    var passes = 0
    print("Pass: \(passes), Swaps: \(swap)/\(totalswap), Array: \(a)")
    for x in 1..<array.count {
        var y = x
        while y > 0 && a[y] < a[y - 1] {
            a.swapAt(y, y-1)
            y -= 1
            swap += 1
            totalswap += 1
        }
        passes += 1
        print("Pass: \(passes), Swaps: \(swap)/\(totalswap), Array: \(a)")
        swap = 0
    }
    return array
}
let balls = insertSort(array: list)
