//: [Previous](@previous)

import Foundation

struct Struct {
    var p1: Int
    var p2: Int
}

extension Struct {
    init() {
        p1 = 1
        p2 = 2
    }
}

// デフォルトの init は残る
Struct(p1: 1, p2: 1)
Struct()

//: [Next](@next)
