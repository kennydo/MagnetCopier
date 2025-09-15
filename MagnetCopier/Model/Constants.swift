import Foundation

enum Constants {
    static let appName = "Magnet Copier"

    static let repoURL = URL(string: "https://github.com/kennydo/MagnetCopier")!
    static let privacyPolicyURL = URL(string: "https://magnet-copier.kenny.do/privacy.html")!

    static var outerPadding: Double {
        #if os(visionOS)
            32
        #else
            16
        #endif
    }
}
