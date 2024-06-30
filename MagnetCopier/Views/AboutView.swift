import SwiftUI

struct AboutView: View {
    enum Route: Hashable {
        case licenseDetail
    }

    var body: some View {
        NavigationStack {
            VStack {
                Text(Constants.appName).font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                Text("\(Constants.appName) is a free and open source utility to handle magnet links.")

                VStack {
                    NavigationLink(destination: LicenseView()) {
                        Label("License", systemImage: "doc.text")
                    }

                    Link(destination: Constants.repoURL) {
                        Label("Source code", systemImage: "link")
                    }
                    .buttonStyle(.bordered)

                    Link(destination: Constants.privacyPolicyURL) {
                        Label("Privacy policy", systemImage: "link")
                    }
                    .buttonStyle(.bordered)
                }
                .padding()

                Spacer()
            }
            .padding(Constants.outerPadding)
        }
        .navigationTitle("About")
    }
}

#Preview {
    AboutView()
}
