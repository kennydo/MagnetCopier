import Foundation

@Observable class License {
    var data: String = ""

    init() {
        load()
    }

    func load() {
        if let filepath = Bundle.main.path(forResource: "LICENSE", ofType: nil) {
            do {
                let contents = try String(contentsOfFile: filepath)
                data = contents
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        } else {
            print("File not found")
        }
    }
}
