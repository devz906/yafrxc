import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro [Split-Mode] Ready.\n"
    @State private var isInstalled = false

    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit").font(.largeTitle).bold()
            
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.green)
            .frame(height: 250).cornerRadius(10)

            if !isInstalled {
                Button("INSTALL ENGINE DATA") {
                    installEngine()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            } else {
                Button("LAUNCH WINE") {
                    launchWine()
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .controlSize(.large)
            }
            
            Button("Clear Logs") { log = "" }.font(.caption)
        }.padding()
        .onAppear { checkInstallation() }
    }

    func checkInstallation() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let winePath = docs.appendingPathComponent("engine/bin/wine").path
        isInstalled = FileManager.default.fileExists(atPath: winePath)
    }

    func installEngine() {
        log += "[1/3] Locating engine_data.zip...\n"
        guard let zipURL = Bundle.main.url(forResource: "engine_data", withExtension: "zip") else {
            log += "❌ Error: engine_data.zip not found in app bundle.\n"
            return
        }

        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let targetURL = docs.appendingPathComponent("engine_data.zip")
        
        log += "[2/3] Moving 1.4GB to Documents...\n"
        do {
            if FileManager.default.fileExists(atPath: targetURL.path) {
                try FileManager.default.removeItem(at: targetURL)
            }
            try FileManager.default.copyItem(at: zipURL, to: targetURL)
            
            log += "[3/3] DONE!\n\n"
            log += "⚠️ ACTION REQUIRED:\n"
            log += "1. Open the 'Files' App.\n"
            log += "2. Go to 'On My iPhone' -> 'WineKit'.\n"
            log += "3. Tap 'engine_data.zip' to Uncompress it.\n"
            log += "4. Ensure the folder is named 'engine'.\n"
            log += "5. Restart this app.\n"
            isInstalled = true
        } catch {
            log += "❌ File Error: \(error.localizedDescription)\n"
        }
    }

    func launchWine() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let engineDir = docs.appendingPathComponent("engine")
        let wineBin = engineDir.appendingPathComponent("bin/wine").path
        
        log += "Activating JIT...\n"
        trigger_jit_bridge()
        
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineDir.path)/lib:\(engineDir.path)/extra_files",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineDir.path)/bin:/usr/bin:/bin",
            "WINEDEBUG=err+all"
        ]
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(wineBin), strdup("winecfg"), nil]
        
        log += "Spawning process...\n"
        let result = posix_spawn(&pid, wineBin, nil, nil, &argv, &envp)
        
        if result == 0 {
            log += "🚀 RUNNING! PID: \(pid)\n"
        } else {
            log += "❌ CRASH: Code \(result)\n"
        }
    }
}
