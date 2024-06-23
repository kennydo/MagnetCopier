//
//  License.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import Foundation

class License: ObservableObject {
    @Published var data: String = ""

    init() {
        load()
    }

    func load() {
        if let filepath = Bundle.main.path(forResource: "LICENSE", ofType: nil) {
            do {
                let contents = try String(contentsOfFile: filepath)
                DispatchQueue.main.async {
                    self.data = contents
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        } else {
            print("File not found")
        }
    }
}
