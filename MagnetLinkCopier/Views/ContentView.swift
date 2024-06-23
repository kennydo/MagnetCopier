//
//  ContentView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Magnet Link Copier")
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
        .padding()
    }
}

#Preview {
    ContentView()
}
