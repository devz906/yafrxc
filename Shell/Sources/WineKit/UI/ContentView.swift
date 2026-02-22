import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "Deep Engine Analysis...\n"
    
    public var body: some View {
        VStack {
            Text("A18 Pro Titan Diagnoser").font(.headline)
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.cyan)
            .frame(height: 450).cornerRadius(10)

            Button("FIND THE BOSS BINARY") {
                analyzeFiles()
            }.buttonStyle(.borderedProminent)
        }.padding()
    }

    func analyzeFiles() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fm = FileManager.default
        log = "Scanning: \(docs.path)\n\n"
        
        let enumerator = fm.enumerator(at: docs, includingPropertiesForKeys: [.fileSizeKey])
        
        var foundPotential = false
        while let url = enumerator?.nextObject() as? URL {
            if url.hasDirectoryPath { continue }
            
            let name = url.lastPathComponent
            let attr = try? fm.attributesOfItem(atPath: url.path)
            let size = attr?[.size] as? UInt64 ?? 0
            let sizeMB = Double(size) / 1024.0 / 1024.0
            
            // Logic: Wine loaders are usually small (under 5MB), Box64 is larger.
            if sizeMB > 0.05 {
                let formattedSize = String(format: "%.2f MB", sizeMB)
                log += "Found: \(name) (\(formattedSize))\n"
                log += "Path: \(url.path.replacingOccurrences(of: docs.path, with: ""))\n\n"
                foundPotential = true
            }
        }
        
        if !foundPotential {
            log += "❌ EMPTY DISK: No files found over 50KB."
        }
    }
}
