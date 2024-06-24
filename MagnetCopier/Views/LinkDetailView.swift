import SwiftUI

struct LinkDetailView: View {
    var link: URL

    @State var hasCopiedToClipboard = false

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
                    if hasCopiedToClipboard {
                        Label("Copied", systemImage: "checkmark")
                    } else {
                        Label("Copy to Clipboard", systemImage: "doc.on.doc")
                    }
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
        .padding([.leading, .trailing, .bottom], Constants.outerPadding)
    }

    func onCopyToClipboardPressed() {
        UIPasteboard.general.string = link.absoluteString
        withAnimation {
            hasCopiedToClipboard = true
        }
    }
}

#Preview {
    LinkDetailView(link: URL(
        string: "magnet://" + String(repeating: "lorem-ipsum-dolor-sit-amet-consectetur-elit-sed-fringilla-lectus-at-euismod-consequat-erat-nibh-pharetra-est-mollis-ligula-ex-a-eros", count: 3))!)
}
