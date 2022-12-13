import SwiftUI

final class LoginStateModel: ObservableObject {

    @Published private(set) var isAuthComplete = false
    
    func auth() {
        isAuthComplete = true
    }
}
