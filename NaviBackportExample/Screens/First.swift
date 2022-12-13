import SwiftUI

struct First: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Text("First")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Spacer()
                VStack(spacing: 30) {
                    Button("Go to second view") {
                        router.path.append(.second)
                    }
                    .font(.title2)
                    
                    Button("Go to login") {
                        router.path.append(.login)
                    }
                    .font(.title2)
                }
                Spacer()
            }
        }
    }
}
