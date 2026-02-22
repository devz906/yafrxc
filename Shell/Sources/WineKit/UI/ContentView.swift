import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro Titan: Manual Engine Mode\n"
    
    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit").font(.largeTitle).bold()
            
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.green)
            .frame(height: 350).cornerRadius(10)

            Button("DETECT & START") {
                launchFromDocs()
            }
            .buttonStyle(.borderedProminent).controlSize(.large)
            
            Text("Download the Engine ZIP and extract it into the WineKit folder via Files app.").font(.footnote).foregroundColor(.secondary).multilineTextAlignment(.center)
        }.padding()
    }

    func launchFromDocs() {
        let fm = FileManager.default
        let docs = fm.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        // This searches for the 'wine' binary anywhere in your documents
        let enumerator = fm.enumerator(at: docs, includingPropertiesForKeys: nil)
        var wineBin: String? = nil
        
        while let fileURL = enumerator?.nextObject() as? URL {
            if fileURL.lastPathComponent == "wine" && !fileURL.hasDirectoryPath {
                wineBin = fileURL.path
                break
            }
        }

        guard let target = wineBin else {
            log += "❌ ERROR: No 'wine' binary found in Documents.\n"
            return
        }

        log += "✅ FOUND: \(target)\n"
        try? fm.setAttributes([.posixPermissions: 0o755], ofItemAtPath: target)
        
        log += "Triggering JIT...\n"
        trigger_jit_bridge()
        
        let engineRoot = URL(fileURLWithPath: target).deletingLastPathComponent().deletingLastPathComponent().path
        
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineRoot)/lib:\(docs.path)/wine/libs:\(docs.path)/wine/box64/build",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineRoot)/bin:\(engineRoot)/loader:/usr/bin:/bin"
        ]
        
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(target), strdup("winecfg"), nil]
        
        log += "Spawning...\n"
        let result = posix_spawn(&pid, target, nil, nil, &argv, &envp)
        log += result == 0 ? "🚀 SUCCESS! PID: \(pid)\n" : "❌ FAILED: \(result)\n"
    }
}
