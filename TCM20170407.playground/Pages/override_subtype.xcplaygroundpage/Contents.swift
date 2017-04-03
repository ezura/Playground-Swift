//: [Previous](@previous)

import Foundation

section {
    class Parent {
        init?() {}
        
        func sample() -> String? {
            return "parent"
        }
        
        func param(p: String) {
            print(p)
        }
    }
    
    class Child: Parent {
        //       init?() {}
        override init() { super.init()! }
        
        //       func sample() -> String? {
        override func sample() -> String {
            return "child"
        }
        
        //       func param(p: String) {
        override func param(p: String?) {
            print(p)
        }
    }
}


section("補足") {
    class Parent {
        func sample() -> NSObject {
            return "parent" as NSObject
        }
        
        func param(p: NSString) {
            print(p)
        }
    }
    
    class Child: Parent {
        //       func sample() -> NSObject {
        override func sample() -> NSString {
            return "child"
        }
        //       func param(p: NSString) {
        override func param(p: NSObject) {
            print(p)
        }
    }
}

//: [Next](@next)
