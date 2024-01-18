import SwiftUI

enum TagColor: String, CaseIterable, Identifiable {
    case blue
    case brown
    case green
    case yellow
    case indigo
    case red
    case cyan

    var id: Self { self }

    var color: Color {
        switch self {
        case .blue: return .blue
        case .brown: return .brown
        case .green: return .green
        case .yellow: return .yellow
        case .indigo: return .indigo
        case .red: return .red
        case .cyan: return .cyan
        }
    }
}
