//: [Previous](@previous)

import Foundation

let kMySpecialPath = "( ˘ω˘)"

func mySpecialPath() -> String {
    return kMySpecialPath
}

func mySpecialPath() -> URL {
    return URL(fileURLWithPath: mySpecialPath())
}

let requestUrl: URL            = mySpecialPath() // (%20%CB%98%CF%89%CB%98) -- file:///private/var/folders/...
let requestUrlAsString: String = mySpecialPath() // "( ˘ω˘)"

//: [Next](@next)
