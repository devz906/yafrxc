import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "Titan Box64 Engine: Ready\n"
    
    public var body: some View {
        VStack(spacing: 20) {
            Text("Titan Box64").font(.largeTitle).bold().foregroundColor(.orange)
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.background(Color.black).foregroundColor(.green).frame(height: 350).cornerRadius(10)

            Button("LAUNCH ENGINE") { launchEngine() }
                .buttonStyle(.borderedProminent).tint(.orange).controlSize(.large)
        }.padding()
    }

    func launchEngine() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fm = FileManager.default
        
        // Target the cooked path
        let winePath = docs.appendingPathComponent("bin/wine").path
        
        if !fm.fileExists(atPath: winePath) {
            log += "❌ ENGINE RAW: bin/wine not found.\n"
            log += "Did you unzip the Cooked Engine into the WineKit folder?\n"
            return
        }

        log += "✅ Chef Found. Triggering JIT...\n"
        trigger_jit_bridge()
        
        let engineRoot = docs.path
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineRoot)/lib:\(engineRoot)/wine/libs:\(engineRoot)/wine/box64/build",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineRoot)/bin:/usr/bin:/bin",
            "BOX64_LOG=1"
        ]
        
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(winePath), strdup("winecfg"), nil]
        
        let result = posix_spawn(&pid, winePath, nil, nil, &argv, &envp)
        log += result == 0 ? "🚀 ENGINE LIVE! PID: \(pid)\n" : "❌ IGNITION FAILURE: \(result)\n"
    }
}
