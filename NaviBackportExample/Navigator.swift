import SwiftUI
import NavigationBackport

struct Navigator: View {
    
    @StateObject private var router = Router()
    
    var body: some View {
        NBNavigationStack(path: $router.path) {
            ScrollView {
                VStack(alignment: .leading, spacing: 50) {
                    Text("Backported navigation stack")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    VStack(spacing: 30) {
                        
                        Button("Go to first view") {
                            router.path.append(.first)
                        }
                        .font(.title2)
                        
                        Button("Go to second view") {
                            router.path.append(.second)
                        }
                        .font(.title2)
                        
                        Button("Go to third view") {
                            router.path.append(.third)
                        }
                        .font(.title2)
                        
                        Spacer()

                        Button("Screen flow") {
                            $router.path.withDelaysIfUnsupported {
                                $0.append(.first)
                                $0.append(.second)
                                $0.append(.third)
                            }
                        }
                        .font(.title2)
                        
                    }.frame(maxWidth: .infinity)
                }
            }
            .nbNavigationDestination(for: Screen.self) { screen in
                router.route(to: screen)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.large)
        .environmentObject(router)
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}

