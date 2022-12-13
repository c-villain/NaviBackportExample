import SwiftUI

struct Second: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.6)
                .ignoresSafeArea()
            
            VStack {
                Text("Second")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Spacer()
                VStack(spacing: 30) {
                    Button("Back to previous") {
                        router.path.popLast()
                    }
                    .font(.title2)
                    
                    Button("Go to third view") {
                        router.path.append(.third)
                    }
                    .font(.title2)
                    
                    Button("Go to first") {
                        router.path.append(.first)
                    }
                    .font(.title2)
                }
                Spacer()
            }
        }
    }
}
