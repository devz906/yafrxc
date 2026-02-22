import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro Deep Scan\n"
    
    public var body: some View {
        VStack(spacing: 15) {
            Text("WineKit Explorer").font(.title).bold()
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.background(Color.black).foregroundColor(.green).frame(height: 350).cornerRadius(10)

            HStack {
                Button("LIST ALL FILES") { listFiles() }.buttonStyle(.bordered)
                Button("FIX & RUN") { autoLaunch() }.buttonStyle(.borderedProminent)
            }
        }.padding()
    }

    func listFiles() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        log += "--- Folder Contents ---\n"
        let contents = (try? FileManager.default.subpathsOfDirectory(atPath: docs.path)) ?? []
        for item in contents.prefix(20) { // Show first 20 files
            log += "\(item)\n"
        }
        log += "... (and more)\n"
    }

    func autoLaunch() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fm = FileManager.default
        
        // Let's look for ANYTHING that could be the Wine loader
        let enumerator = fm.enumerator(at: docs, includingPropertiesForKeys: nil)
        var bestCandidate: String? = nil
        
        while let fileURL = enumerator?.nextObject() as? URL {
            let name = fileURL.lastPathComponent
            // If it's wine, wine64, or just a binary in a /bin folder
            if (name == "wine" || name == "wine64" || name == "wine-preloader") && !fileURL.hasDirectoryPath {
                bestCandidate = fileURL.path
                break
            }
        }

        guard let target = bestCandidate else {
            log += "❌ STILL NO WINE! Found 'config' but that's not a binary.\n"
            log += "Looking for 'bin/wine' or 'loader/wine'...\n"
            return
        }

        log += "✅ TARGET FOUND: \(target)\n"
        try? fm.setAttributes([.posixPermissions: 0o755], ofItemAtPath: target)
        trigger_jit_bridge()
        
        var pid: pid_t = 0
        var argv = [strdup(target), strdup("winecfg"), nil]
        let result = posix_spawn(&pid, target, nil, nil, &argv, nil)
        log += result == 0 ? "🚀 RUNNING! PID: \(pid)\n" : "❌ SPAWN ERROR: \(result)\n"
    }
}
