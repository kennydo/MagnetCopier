//
//  LicenseView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct LicenseView: View {
    @ObservedObject var model = License()

    var body: some View {
        VStack {
            Text("License")
            ScrollView {
                Text(model.data)
            }
        }
    }
}

#Preview {
    LicenseView()
}
