import SwiftUI

struct Login: View {
    
    @EnvironmentObject private var router: Router
    @StateObject var state = LoginStateModel()
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.6)
                .ignoresSafeArea()
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Spacer()
                
                VStack(spacing: 30) {
                    Button("Login", action: state.auth)
                        .font(.title2)
                    
                    Button("Go to third!") {
                        router.path.append(.third)
                    }
                    .font(.title2)
                    .disabled(!state.isAuthComplete)
                }
                Spacer()
            }
        }
    }
}

