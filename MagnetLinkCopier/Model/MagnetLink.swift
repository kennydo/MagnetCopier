//
//  MagnetLink.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/23/24.
//

import Foundation

class MagnetLink {
    @Published var url: URL

    init(url: URL) {
        self.url = url
    }
}
