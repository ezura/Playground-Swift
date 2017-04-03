//: [Previous](@previous)

import Foundation

section {
    enum Sample {
        case member(name: String, nickname: String, age: Int)
        case guest(nickname: String)
    }
    
    let sample: Sample = .guest(nickname: "(’ω’)")
    
    switch sample {
    case .member(_, let displayName, _),
         .guest(let displayName):
        print(displayName)
    }
}


protocol SampleProtocol {
    var sample: String { get }
}
section {
    struct A: SampleProtocol {
        let sample = "A(’A’)A"
    }
    
    struct B: SampleProtocol {
        let sample = "B(’B’)B"
    }
    
    enum SampleEnum {
        case a(A), b(B)
    }
    
    let sample2: SampleEnum = .a(A())
    switch sample2 {
    case .a(let v as SampleProtocol),
         .b(let v as SampleProtocol):
        print(v.sample)
    }
}

//: [Next](@next)
