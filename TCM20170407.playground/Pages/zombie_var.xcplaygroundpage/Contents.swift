//: [Previous](@previous)

import Foundation

class A {
//    lazy var zombie: Int! = {
//        return 1
//    }()
    
    lazy var zombie: Int! = 1
}

let a = A()
a.zombie  // 1

a.zombie = 1000000000
a.zombie  // 1000000000

a.zombie = nil
a.zombie  // 1



/**
 lazy 繋がりで @trunon さんに教えてもらったコード
 
 初期化前にアクセスした場合、殺す
 */

class B {
    var v1: Int!
    
    // こっちのが良い
    lazy var v2: Int = {
        fatalError("`\(#function)` is not initialized")
    }()
}

let b = B()
// fatal error: unexpectedly found nil while unwrapping an Optional value
//b.v1.description

// nil 入っちゃう
b.v1 = nil


// fatal error: `v2` is not initialized
//b.v2.description

// nil は入り得ない
//b.v2 = nil

//: [Next](@next)
