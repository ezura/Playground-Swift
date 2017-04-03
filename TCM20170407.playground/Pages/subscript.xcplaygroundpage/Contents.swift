//: [Previous](@previous)

import Foundation

section {
    struct Sample {
        // for `[1, 2]`
        subscript (arg1: Int, arg2: Int) -> Void {
            // do something
            return
        }
        
        // for `[]`
        subscript () -> String {
            // do something
            return #function
        }
    }
    
    Sample()[1, 2]
    Sample()[]
}

section {
    struct Sample {
        // for `[]`
        subscript () -> Void {
            // do something
            return
        }
        
        // for `[1]`
        subscript (arg1: Int) -> Void {
            // do something
            return
        }
        
        // for `[1, 2]`
        subscript (arg1: Int, arg2: Int) -> Void {
            // do something
            return
        }
        
        // for `[1, 2, 3]`
        subscript (args: Int...) -> Void {
            // do something
            return
        }
    }
    
    Sample()[]
    Sample()[1]
    // ❗️error: found this candidate
    //  subscript (args: Int...) -> Void {
    // Sample()[1, 2]
    Sample()[1, 2, 3]
    Sample()[1, 2, 3, 4]
}

section {
    struct Sample {
        // for `[]`
        subscript () -> Void {
            // do something
            return
        }
        
        // for `[1]`
        subscript (arg1: Int) -> Void {
            // do something
            return
        }
        
        // for `[1, 2]`
        //                                    ↓
        subscript (arg1: Int, arg2: Int) -> String {
            // do something
            return "a"
        }
        
        // for `[1, 2, 3, 4]`
        subscript (args: Int...) -> Void {
            // do something
            return
        }
    }
    
    Sample()[]
    Sample()[1]
    let a: String = Sample()[1, 2]
    Sample()[1, 2, 3]
}


//: [Next](@next)
