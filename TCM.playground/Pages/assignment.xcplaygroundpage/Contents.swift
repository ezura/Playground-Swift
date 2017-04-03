//: [Previous](@previous)

import Foundation

precedencegroup OperationFoldedIntoOptionalChaining {
    assignment: true
}

precedencegroup OperationOutsideOfOptionalChaining {
    assignment: false
}

infix operator ~~ : OperationFoldedIntoOptionalChaining
infix operator ~^ : OperationOutsideOfOptionalChaining

func ~~ (left: Int, right: Int) -> Int {
    print("~~")
    return left + right
}

func ~^ (left: Int?, right: Int) -> Int {
    print("~^")
    return left?.advanced(by: right) ?? -1
}

let values = nil as [Int]?

values?.count ~~ 5  // => nil
values?.count ~^ 5  // => -1

/*:
 ## ~~ 演算 (assignment: true)
 `values.map { $0.count ~~ 5 }` と同等。この例では `~~` 演算は実行されない。
 
 ## ~^ 演算 (assignment: false)
 `(values?.count) ~^ 5` と同等。演算子の既定の動作。
 */

//: [Next](@next)
