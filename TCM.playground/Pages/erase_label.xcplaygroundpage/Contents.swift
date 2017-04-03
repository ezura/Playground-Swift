//: [Previous](@previous)

import Foundation

section {
    class Lab {
        func ʕ·͡ᴥ·ʔ(with kuma: Int, kuma2: String) -> String { return "\(#function), \(kuma)" }
        func 😮(wow: Int, obj: String) -> String { return "\(#function), \(wow)" }
    }
    
    Lab.ʕ·͡ᴥ·ʔ   // (Lab) -> ((Int, String)) -> String
    Lab().ʕ·͡ᴥ·ʔ // ((Int, String)) -> String
    Lab().😮    // ((Int, String)) -> String
    var test: ((Int, String)) -> String
    
    test = Lab().ʕ·͡ᴥ·ʔ
    test = Lab().😮
    test((1, ""))
}

section {
    class Lab {
        func ʕ·͡ᴥ·ʔ(with kuma: Int, kuma2: NSString) -> String { return "\(#function), \(kuma)" }
        func 😮(wow: Int, obj: NSObject) -> String { return "\(#function), \(wow)" }
    }
    
    Lab.ʕ·͡ᴥ·ʔ   // (Lab) -> ((Int, NSString)) -> String
    Lab().ʕ·͡ᴥ·ʔ // ((Int, NSString)) -> String
    Lab().😮    // ((Int, NSObject)) -> String
    var test: ((Int, NSString)) -> String
    
    test = Lab().ʕ·͡ᴥ·ʔ
    test = Lab().😮
    test((1, ""))
}

section("補足") {
    ("" as NSString) as NSObject  // `NSString` → `NSObject`
    ({ () -> NSString in "" }) as () -> NSObject // `NSString` → `NSObject`
    // contravariant
    ({ (v: NSObject) -> Void in }) as (NSString) -> Void  // `NSObject` → `NSString`
}

//: [Next](@next)
