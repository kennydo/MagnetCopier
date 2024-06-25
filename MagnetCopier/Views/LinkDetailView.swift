import SwiftUI

struct LinkDetailView: View {
    var link: MagnetLink

    var body: some View {
        VStack {
            GroupBox(
                label:
                HStack {
                    Text("Magnet Link").fontWeight(.bold)
                    Spacer()
                    ShareLink(item: link.url.absoluteString)
                        .labelStyle(.iconOnly)
                }
            ) {
                ScrollView(.vertical) {
                    Text(link.url.absoluteString)
                        .foregroundColor(.secondary)
                }

                Button(action: onCopyToClipboardPressed) {
                    Label("Copy to Clipboard", systemImage: "doc.on.doc")
                        .opacity(link.hasBeenCopiedToClipboard ? 0 : 1)
                        .overlay {
                            // We use an overlay so that the size of the button doesn't change.
                            if link.hasBeenCopiedToClipboard {
                                Label("Copied", systemImage: "checkmark")
                            }
                        }
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
        .padding([.leading, .trailing, .bottom], Constants.outerPadding)
    }

    func onCopyToClipboardPressed() {
        UIPasteboard.general.string = link.url.absoluteString
        withAnimation {
            link.hasBeenCopiedToClipboard = true
        }
    }
}

#Preview {
    LinkDetailView(link: MagnetLink(url: URL(
        string: "magnet://" + String(repeating: "lorem-ipsum-dolor-sit-amet-consectetur-elit-sed-fringilla-lectus-at-euismod-consequat-erat-nibh-pharetra-est-mollis-ligula-ex-a-eros", count: 3))!))
}
