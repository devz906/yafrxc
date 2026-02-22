import SwiftUI

public struct ContentView: View {
    @State private var status = "Ready for A18 Pro"
    @State private var foundPath = ""
    
    public init() {}

    public var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(systemName: "folder.fill.badge.search")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                
                Text("WineKit Explorer")
                    .font(.largeTitle).bold()
                
                Text(status)
                    .font(.caption)
                    .monospaced()
                    .padding()
                    .background(Color.black.opacity(0.1))
                
                Button("SCAN & LAUNCH") {
                    scanForWine()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
    
    func scanForWine() {
        let wineRoot = Bundle.main.bundlePath + "/wine"
        status = "Scanning root: \(wineRoot)..."
        
        let fileManager = FileManager.default
        // Deep search for any file named "wine"
        if let enumerator = fileManager.enumerator(atPath: wineRoot) {
            for case let file as String in enumerator {
                if file.hasSuffix("/bin/wine") || file == "bin/wine" || file == "wine" {
                    foundPath = wineRoot + "/" + file
                    status = "FOUND IT!\nPath: \(foundPath)"
                    return
                }
            }
        }
        status = "Still can't see it. The /wine folder contains: \((try? fileManager.contentsOfDirectory(atPath: wineRoot)) ?? [])"
    }
}
