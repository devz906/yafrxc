import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro Titan [Deep Scan Mode]\n"

    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit Explorer").font(.title).bold()
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.green)
            .frame(height: 350).cornerRadius(10)

            Button("DEEP SCAN & LAUNCH") {
                deepScanAndLaunch()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }.padding()
    }

    func deepScanAndLaunch() {
        let fm = FileManager.default
        let docs = fm.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        log += "Scanning for Wine executable...\n"
        
        // --- 1. SEARCH EVERYTHING ---
        let enumerator = fm.enumerator(at: docs, includingPropertiesForKeys: [.isRegularFileKey])
        var possiblePaths: [String] = []
        
        while let fileURL = enumerator?.nextObject() as? URL {
            // We are looking for a file named 'wine' or 'wine-preloader'
            if fileURL.lastPathComponent == "wine" || fileURL.lastPathComponent == "wine64" {
                var isDir: ObjCBool = false
                if fm.fileExists(atPath: fileURL.path, isDirectory: &isDir), !isDir.boolValue {
                    possiblePaths.append(fileURL.path)
                }
            }
        }
        
        guard let wineBin = possiblePaths.first else {
            log += "❌ ERROR: No 'wine' executable found.\n"
            log += "Found folders: \(try? fm.contentsOfDirectory(atPath: docs.path))\n"
            return
        }
        
        log += "✅ TARGET: \(wineBin)\n"
        
        // --- 2. JIT & PERMISSIONS ---
        log += "Setting Permissions...\n"
        try? fm.setAttributes([.posixPermissions: 0o755], ofItemAtPath: wineBin)
        
        log += "Triggering JIT...\n"
        trigger_jit_bridge()
        
        // --- 3. EXECUTION ---
        var pid: pid_t = 0
        let engineRoot = URL(fileURLWithPath: wineBin).deletingLastPathComponent().path
        
        // Try to find the lib folder relative to where we found wine
        let libPath = "\(engineRoot)/../lib:\(docs.path)/wine/lib:\(docs.path)/wine/extra_files"
        
        let env = [
            "DYLD_LIBRARY_PATH=\(libPath)",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineRoot):/usr/bin:/bin",
            "WINEDEBUG=err+all"
        ]
        
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(wineBin), strdup("winecfg"), nil]
        
        log += "Spawning...\n"
        let result = posix_spawn(&pid, wineBin, nil, nil, &argv, &envp)
        
        if result == 0 {
            log += "🚀 SUCCESS! PID: \(pid)\n"
        } else {
            let errorMsg = String(cString: strerror(result))
            log += "❌ SPAWN ERROR: \(errorMsg)\n"
        }
    }
}
