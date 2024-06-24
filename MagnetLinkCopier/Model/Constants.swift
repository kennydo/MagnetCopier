//
//  Constants.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import Foundation

enum Constants {
    static var appName = "Magnet Link Copier"

    static var repoURL = URL(string: "https://github.com/kennydo/MagnetLinkCopier")!

    static var outerPadding: Double {
        #if os(visionOS)
            32
        #else
            16
        #endif
    }
}
