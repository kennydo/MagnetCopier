
import Foundation

@Observable class MagnetLink {
    var url: URL
    var hasBeenCopiedToClipboard = false

    init(url: URL) {
        self.url = url
    }
}
