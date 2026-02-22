import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro Titan Engine\n"
    @State private var isInstalled = false

    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit").font(.largeTitle).bold()
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.green)
            .frame(height: 300).cornerRadius(10)

            Button("AUTO-DETECT & LAUNCH") {
                launchWine()
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .controlSize(.large)
            
            Button("Reset Installation State") {
                isInstalled = false
                log += "Status reset. Check Files app.\n"
            }.font(.caption)
        }.padding()
    }

    func launchWine() {
        let fm = FileManager.default
        let docs = fm.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        // --- 1. SMART SEARCH FOR WINE ---
        let enumerator = fm.enumerator(at: docs, includingPropertiesForKeys: nil)
        var foundWinePath: String? = nil
        
        while let fileURL = enumerator?.nextObject() as? URL {
            if fileURL.lastPathComponent == "wine" && fileURL.path.contains("/bin/") {
                foundWinePath = fileURL.path
                break
            }
        }
        
        guard let wineBin = foundWinePath else {
            log += "❌ ERROR: Could not find 'wine' binary.\n"
            log += "Make sure you unzipped engine_data.zip in the Files app!\n"
            return
        }
        
        log += "✅ Found Wine: \(wineBin)\n"
        let engineRoot = URL(fileURLWithPath: wineBin).deletingLastPathComponent().deletingLastPathComponent().path
        
        // --- 2. JIT ACTIVATE ---
        log += "Triggering JIT...\n"
        trigger_jit_bridge()
        
        // --- 3. EXECUTION ---
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineRoot)/lib:\(engineRoot)/extra_files:\(docs.path)/engine/extra_files",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineRoot)/bin:/usr/bin:/bin",
            "WINEDEBUG=err+all"
        ]
        
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(wineBin), strdup("winecfg"), nil]
        
        log += "Spawning Wine...\n"
        let result = posix_spawn(&pid, wineBin, nil, nil, &argv, &envp)
        
        if result == 0 {
            log += "🚀 RUNNING! PID: \(pid)\n"
            log += "If no window appears, check StikDebug logs.\n"
        } else {
            let errorMsg = String(cString: strerror(result))
            log += "❌ SPAWN ERROR: \(errorMsg) (Code: \(result))\n"
        }
        
        for ptr in envp { if let p = ptr { free(p) } }
        for ptr in argv { if let p = ptr { free(p) } }
    }
}
