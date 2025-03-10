import Foundation

enum Constants {
    static var appName = "Magnet Copier"

    static var repoURL = URL(string: "https://github.com/kennydo/MagnetCopier")!
    static var privacyPolicyURL = URL(string: "https://magnet-copier.kenny.do/privacy.html")!

    static var outerPadding: Double {
        #if os(visionOS)
            32
        #else
            16
        #endif
    }
}
