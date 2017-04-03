//: [Previous](@previous)

import Foundation

class A {
    lazy var zombie: Int! = {
        return 1
    }()
}

let a = A()
a.zombie  // 1

a.zombie = 1000000000
a.zombie  // 1000000000

a.zombie = nil
a.zombie  // 1

//: [Next](@next)
