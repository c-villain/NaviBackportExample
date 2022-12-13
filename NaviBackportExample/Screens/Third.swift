import SwiftUI

struct Third: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.6)
                .ignoresSafeArea()
            
            VStack {
                Text("Third")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Spacer()
                VStack(spacing: 30) {
                    Button("Go to second view") {
                        router.path.append(.second)
                    }
                    .font(.title2)
                    
                    if router.path.contains(.first) {
                        Button("Go to first view") {
                            router.path.popTo(.first)
                        }
                        .font(.title2)
                    }
                    Button("Go to root") {
                        router.path.popToRoot()
                    }
                    .font(.title2)
                }
                Spacer()
            }
        }
    }
}
