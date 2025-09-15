import SwiftUI

struct LinkDetailView: View {
    @Binding var showCopiedToast: Bool

    var url: URL

    var body: some View {
        VStack {
            GroupBox(
                label:
                HStack {
                    Text("Magnet Link").fontWeight(.bold)
                    Spacer()
                    ShareLink(item: url.absoluteString)
                        .labelStyle(.iconOnly)
                }
            ) {
                ScrollView(.vertical) {
                    Text(url.absoluteString)
                        .foregroundColor(.secondary)
                }

                Button(action: onCopyToClipboardPressed) {
                    Label("Copy to Clipboard", systemImage: "doc.on.doc")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
        .padding([.leading, .trailing, .bottom], Constants.outerPadding)
    }

    func onCopyToClipboardPressed() {
        UIPasteboard.general.string = url.absoluteString
        showCopiedToast = true
    }
}

#Preview {
    @Previewable @State var showCopiedToast = false

    return LinkDetailView(
        showCopiedToast: $showCopiedToast,
        url: URL(
            string: "magnet://" + String(repeating: "lorem-ipsum-dolor-sit-amet-consectetur-elit-sed-fringilla-lectus-at-euismod-consequat-erat-nibh-pharetra-est-mollis-ligula-ex-a-eros", count: 3))!
    )
}
