import Foundation

public func section(_ title: String? = nil, _ line: UInt = #line, _ block: () -> Void) {
    print("--------", title ?? line, "--------")
    block()
    print("----------------\n")
}
