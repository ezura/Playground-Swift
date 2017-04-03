import Foundation

enum Week {
    case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

extension Week: Comparable {
    func successor() -> Week {
        print(#function, self)
        switch self {
        case .Sunday: return .Monday
        case .Monday: return .Tuesday
        case .Tuesday: return .Wednesday
        case .Wednesday: return .Thursday
        case .Thursday: return .Friday
        case .Friday: return .Saturday
        case .Saturday: return .Sunday
        }
    }
    
    static func <(lhs: Week, rhs: Week) -> Bool {
        return true
    }
    
    // これを追加 (普通は不要だけど、ループする空間の定義のためには必要)
    static func <=(lhs: Week, rhs: Week) -> Bool {
        return true
    }
}

let range = (Week.Saturday ... Week.Sunday)