import SwiftUI

@main
struct MagnetCopierApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .background(.regularMaterial)
            #if os(visionOS)
                .frame(minWidth: 500, minHeight: 400)
            #endif
        }
        .windowResizability(.contentSize)
    }
}
