//
//  MagnetLinkCopierApp.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

@main
struct MagnetLinkCopierApp: App {
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
