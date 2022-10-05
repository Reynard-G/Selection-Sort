// Add your code below:
import Foundation

var min = 0
var arr : [String] = []

while let line = readLine() {
    arr.append(line)
}

for i in 0 ..< arr.count {
    min = i

    for j in (i + 1) ..< arr.count {
        if arr[j] < arr[min] {
            min = j
        }
    }
    if (min != i) {
        swapAt(array: &arr, index: i, minIndex: min)
    }
}

for line in arr {
    print(line)
}

func swapAt(array: inout [String], index: Int, minIndex: Int) {
    let temp = array[index]
    array[index] = array[minIndex]
    array[minIndex] = temp
}
