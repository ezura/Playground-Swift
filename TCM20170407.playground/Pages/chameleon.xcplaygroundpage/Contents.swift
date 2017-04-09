//: [Previous](@previous)

import UIKit

protocol A {
    var chameleon: String { get }
}

extension A {
    var chameleon: String { return "string" }
}

protocol B {
    var chameleon: Int { get }
}

extension B {
    var chameleon: Int { return 1 }
}

protocol C {
    var chameleon: UIColor { get }
}

extension C {
    var chameleon: UIColor { return .green }
}

struct Quiz {}
extension Quiz: A, B, C {}

let quiz = Quiz()
// quiz.chameleon             // ❗️error: ambiguous use of 'chameleon'
quiz.chameleon as Int      // 1
quiz.chameleon as String   // "string"
quiz.chameleon as UIColor  // UIDeviceRGBColorSpace 0 1 0 1


section {
    struct Quiz: A, B, C {
        var chameleon: NSString = "s"
    }
    
    let quiz = Quiz()
    quiz.chameleon             // "s"
    quiz.chameleon as Int      // 1
    quiz.chameleon as String   // "string"
    quiz.chameleon as UIColor  // UIDeviceRGBColorSpace 0 1 0 1
}

//: [Next](@next)
