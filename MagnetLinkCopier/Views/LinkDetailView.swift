//
//  LinkDetailView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct LinkDetailView: View {
    var link: URL

    var body: some View {
        VStack {
            GroupBox(
                label:
                HStack {
                    Text("Magnet Link").fontWeight(.bold)
                    Spacer()
                    ShareLink(item: link.absoluteString)
                        .labelStyle(.iconOnly)
                }
            ) {
                ScrollView(.vertical) {
                    Text(link.absoluteString)
                        .foregroundColor(.secondary)
                }

                Button(action: onCopyToClipboardPressed) {
                    Label("Copy to Clipboard", systemImage: "doc.on.doc")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
    }

    func onCopyToClipboardPressed() {
        UIPasteboard.general.string = link.absoluteString
    }
}

#Preview {
    LinkDetailView(link: URL(
        string: "magnet://" + String(repeating: "lorem-ipsum-dolor-sit-amet-consectetur-elit-sed-fringilla-lectus-at-euismod-consequat-erat-nibh-pharetra-est-mollis-ligula-ex-a-eros", count: 3))!)
}
