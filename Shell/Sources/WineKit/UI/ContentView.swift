import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro [Manual Load Mode]\n"
    
    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit").font(.largeTitle).bold()
            
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.green)
            .frame(height: 350).cornerRadius(10)

            Button("DETECT & START WINE") {
                manualLaunch()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Text("Place your 'wine' folder in the WineKit folder via Files app").font(.footnote).foregroundColor(.secondary)
        }.padding()
    }

    func manualLaunch() {
        let fm = FileManager.default
        let docs = fm.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        log += "Searching for wine folder in Documents...\n"
        
        // Look for common wine executable paths in your folder
        let searchPaths = [
            "wine/loader/wine",
            "wine/bin/wine",
            "wine/wine"
        ]
        
        var finalPath: String? = nil
        for p in searchPaths {
            let fullPath = docs.appendingPathComponent(p).path
            if fm.fileExists(atPath: fullPath) {
                finalPath = fullPath
                break
            }
        }

        guard let wineBin = finalPath else {
            log += "❌ ERROR: No 'wine' executable found.\n"
            log += "Ensure you have a 'wine' folder in Files app.\n"
            return
        }

        log += "✅ FOUND: \(wineBin)\n"
        try? fm.setAttributes([.posixPermissions: 0o755], ofItemAtPath: wineBin)
        
        log += "Triggering JIT...\n"
        trigger_jit_bridge()
        
        let engineRoot = URL(fileURLWithPath: wineBin).deletingLastPathComponent().deletingLastPathComponent().path
        
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineRoot)/lib:\(docs.path)/wine/libs:\(docs.path)/wine/box64/build",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineRoot)/bin:\(engineRoot)/loader:/usr/bin:/bin",
            "WINEDEBUG=err+all"
        ]
        
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(wineBin), strdup("winecfg"), nil]
        
        log += "Spawning...\n"
        let result = posix_spawn(&pid, wineBin, nil, nil, &argv, &envp)
        
        if result == 0 {
            log += "🚀 SUCCESS! PID: \(pid)\n"
        } else {
            log += "❌ ERROR: \(result) (Check Permissions)\n"
        }
    }
}
