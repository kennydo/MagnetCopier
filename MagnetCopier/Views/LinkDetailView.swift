import SwiftUI

struct LinkDetailView: View {
    let toastDuration = DispatchTimeInterval.seconds(3)

    @State var showToast = false

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
        .toast(showToast: $showToast, dismissAfter: toastDuration) {
            Toast(title: "Copied!")
        }
    }

    func onCopyToClipboardPressed() {
        UIPasteboard.general.string = url.absoluteString
        showToast = true
    }
}

#Preview {
    LinkDetailView(url: URL(
        string: "magnet://" + String(repeating: "lorem-ipsum-dolor-sit-amet-consectetur-elit-sed-fringilla-lectus-at-euismod-consequat-erat-nibh-pharetra-est-mollis-ligula-ex-a-eros", count: 3))!)
}
