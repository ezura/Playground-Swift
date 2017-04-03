//: [Previous](@previous)

import Foundation

// Swift の nonnull ところに nil いれたときの挙動
// Swift 3.0

func callFromObjc(_ arg: String) {
    print(arg) // if arg == nil, print ""
}

func callFromObjc(_ arg: [String:String]) {
    print(arg) // if arg == nil, print [:]
}

func callFromObjc(_ arg: URL) {
    print(arg) // if arg == nil, runtime error
}

//: [Next](@next)
