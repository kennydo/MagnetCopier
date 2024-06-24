//
//  AboutView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct AboutView: View {
    enum Route: Hashable {
        case licenseDetail
    }

    var body: some View {
        NavigationStack {
            VStack {
                Text(Constants.appName).font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                Text("\(Constants.appName) is a free and open source utility to handle magnet links.")

                HStack {
                    NavigationLink(destination: LicenseView()) {
                        Label("License", systemImage: "doc.text")
                    }
                    .padding()

                    Link(destination: Constants.repoURL) {
                        Label("Source code", systemImage: "link")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                }
                Spacer()
            }
            .padding(Constants.outerPadding)
        }
        .navigationTitle("About")
        /*
         NavigationSplitView {
             List {
                 NavigationLink(destination: LicenseView()) {
                     Label("License", systemImage: "doc.text")
                 }

             }
             .navigationTitle("Settings")
         } detail: {
             Text("Select from the sidebar")
         }
          */
    }
}

#Preview {
    AboutView()
}
