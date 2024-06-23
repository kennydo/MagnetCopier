//
//  ContentView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }.padding(Constants.outerPadding)
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }.padding(.top, Constants.outerPadding)
        }
    }
}

#Preview {
    ContentView()
}
