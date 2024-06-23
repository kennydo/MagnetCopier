//
//  Constants.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import Foundation

enum Constants {
    static var outerPadding: Double {
        #if os(visionOS)
            50
        #else
            20
        #endif
    }
}
