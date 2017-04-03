//: [Previous](@previous)

import Foundation

section {
    func sample() {
        return
        print(#line, "after return")
        print(#line, "after return")
    }
    sample()
}


section {
    func sample() -> Int {
        return
        1
        print(#line, "after return")
    }
    sample()  // 1
}

//: [Next](@next)
