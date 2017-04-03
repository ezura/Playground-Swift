//: [Previous](@previous)

import Foundation

section {
    func acceptVoidFunction(_ p: ()) {
        print(#function)
    }
    acceptVoidFunction(())
    acceptVoidFunction(acceptVoidFunction(acceptVoidFunction()))
}

section {
    print(print(print(print("aaa"))))
}

/*
 -------- 5 --------
 acceptVoidFunction
 acceptVoidFunction
 acceptVoidFunction
 acceptVoidFunction
 ----------------
 
 -------- 13 --------
 aaa
 ()
 ()
 ()
 ---------------
 */
//: [Next](@next)
