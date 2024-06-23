//
//  SettingsView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink(destination: LicenseView()) {
                    Label("License", systemImage: "doc.text")
                }
                Link(destination: Constants.repoURL) {
                    Label("Source code", systemImage: "link")
                }
            }
            .navigationTitle("Settings")
        } detail: {
            Text("Select from the sidebar")
        }
    }
}

#Preview {
    SettingsView()
}
