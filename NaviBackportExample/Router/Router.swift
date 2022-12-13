import SwiftUI
import NavigationBackport

enum Screen: NBScreen {
    case login
    case first
    case second
    case third
}

final class Router: ObservableObject {
    
    @Published var path: [Screen] = []
    
    @ViewBuilder
    func route(to screen: Screen) -> some View {
        switch screen {
        case .first:
            First()
        case .second:
            Second()
        case .third:
            Third()
        case .login:
            Login()
        }
    }
}
