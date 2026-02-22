import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro: Ready\n"
    
    public var body: some View {
        VStack(spacing: 15) {
            Text("WineKit").font(.title).bold()
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.background(Color.black).foregroundColor(.green).frame(height: 300).cornerRadius(10)

            HStack {
                Button("FIX PERMS") { fixPermissions() }
                    .buttonStyle(.bordered)
                
                Button("SCAN & RUN") { launchFromDocuments() }
                    .buttonStyle(.borderedProminent)
            }
            
            Text("Drop 'wine' folder in Files -> WineKit").font(.caption2).foregroundColor(.gray)
        }.padding()
    }

    func fixPermissions() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let enumerator = FileManager.default.enumerator(at: docs, includingPropertiesForKeys: nil)
        log += "Unlocking binaries...\n"
        
        while let fileURL = enumerator?.nextObject() as? URL {
            let path = fileURL.path
            if path.contains("/bin/") || path.contains("/loader/") || fileURL.lastPathComponent == "wine" {
                try? FileManager.default.setAttributes([.posixPermissions: 0o755], ofItemAtPath: path)
            }
        }
        log += "✅ Permissions Reset!\n"
    }

    func launchFromDocuments() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fm = FileManager.default
        
        let enumerator = fm.enumerator(at: docs, includingPropertiesForKeys: nil)
        var wineBin: String? = nil
        
        while let fileURL = enumerator?.nextObject() as? URL {
            if fileURL.lastPathComponent == "wine" && !fileURL.hasDirectoryPath {
                wineBin = fileURL.path
                break
            }
        }

        guard let target = wineBin else {
            log += "❌ ERROR: 'wine' not found.\n"
            return
        }

        log += "✅ Target: \(target)\n"
        trigger_jit_bridge()
        
        let engineRoot = URL(fileURLWithPath: target).deletingLastPathComponent().deletingLastPathComponent().path
        
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineRoot)/lib:\(docs.path)/wine/libs:\(docs.path)/wine/extra_files",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineRoot)/bin:\(engineRoot)/loader:/usr/bin:/bin"
        ]
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(target), strdup("winecfg"), nil]
        
        let result = posix_spawn(&pid, target, nil, nil, &argv, &envp)
        log += result == 0 ? "🚀 PID: \(pid)\n" : "❌ Error: \(result)\n"
    }
}
