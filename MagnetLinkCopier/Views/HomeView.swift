//
//  HomeView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct HomeView: View {
    enum Route: Hashable {
        case linkDetail(URL)
    }

    @State private var path: [Route] = []

    var body: some View {
        NavigationStack(path: $path) {
            VStack(alignment: .leading) {
                Text(Constants.appName)
                    .font(.title)

                GroupBox(label:
                    Label("Usage Instructions", systemImage: "info.circle")
                ) {
                    Text("Magnet links will automatically open in this app.")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(0)

                    VStack(alignment: .leading) {
                        Text("Steps")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)

                        Text("1. Tap a link that starts with \"magnet://\"")
                            .padding(5)
                        Text("2. This app will open and show actions you can take with the link")
                            .padding(5)
                        Text("3. Copy the link to use it in another app")
                            .padding(5)
                    }
                    .padding(.top, 15)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                }

                Spacer()
            }
            .padding(Constants.outerPadding)
            .navigationDestination(for: Route.self) {
                route in switch route {
                case let .linkDetail(url):
                    LinkDetailView(link: url)
                }
            }
        }.onOpenURL(perform: { url in
            // We want to cap the navigation stack at 1 element deep.
            path = [Route.linkDetail(url)]
        })
    }
}

#Preview {
    HomeView()
}
