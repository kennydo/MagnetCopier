import SwiftUI

enum TabIdentifier: Hashable {
    case home, settings
}

struct ContentView: View {
    @State var activeTab = TabIdentifier.home

    var body: some View {
        TabView(selection: $activeTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(TabIdentifier.home)

            AboutView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("About")
                }
                .tag(TabIdentifier.settings)
        }
        .onOpenURL(perform: { _ in
            // Whenever we open a URL, we want the app to switch to the home tab.
            activeTab = TabIdentifier.home
        })
    }
}

#Preview {
    ContentView()
}
