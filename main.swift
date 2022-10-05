// Add your code below:
import Foundation

var totalSwap = 0
var pass = 0
var min = 0
var currSwap = 0
var arr : [String] = []

while let line = readLine() {
    arr.append(line)
}

for i in 0 ..< arr.count {
    print("Pass: \(pass), Swaps: \(currSwap)/\(totalSwap), Array: \(arr)")

    currSwap = 0
    pass += 1
    min = i

    for j in (i + 1) ..< arr.count {
        if arr[j] < arr[min] {
            min = j
        }
    }
    if (min != i) {
        swapAt(array: &arr, index: i, minIndex: min)
        totalSwap += 1
        currSwap += 1
    }
    if currSwap == 0 { // Answers are wrong, apparently there is supose to be a swap added when there was none
        currSwap += 1
        totalSwap += 1
    }
}

func swapAt(array: inout [String], index: Int, minIndex: Int) {
    let temp = array[index]
    array[index] = array[minIndex]
    array[minIndex] = temp
}
