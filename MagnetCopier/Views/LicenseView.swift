import SwiftUI

struct LicenseView: View {
    @ObservedObject var model = License()

    var body: some View {
        ScrollView {
            Text(model.data).padding(10)
        }.navigationTitle("License")
    }
}

#Preview {
    LicenseView()
}
