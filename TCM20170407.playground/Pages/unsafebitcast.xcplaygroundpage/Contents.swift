//: [Previous](@previous)

import Foundation

struct Type<T> {
    var p1: Int
}
section {
    // Type<Int>
    var type_int = Type<Int>(p1: 1)
    // Type<Double>()
    let type_double = unsafeBitCast(type_int, to: Type<Double>.self)
    
    type_int.p1    // 1
    type_double.p1 // 1
    
    type_int.p1 = 2
    type_int.p1    // 2
    type_double.p1 // 1
}


class ClassType<T> {
    var p1: Int = 1
}
section("余談") {
    // ClassType<Int>
    let type_int = ClassType<Int>()
    // ClassType<Double>()
    let type_double = unsafeBitCast(type_int, to: ClassType<Double>.self)
    
    type_int.p1    // 1
    type_double.p1 // 1
    
    type_int.p1 = 2
    type_int.p1    // 2
    type_double.p1 // 2
}

// 役に立つ例
// https://gist.github.com/ezura/7dc0a454f790b39401990f45a10dca22


//: [Next](@next)
