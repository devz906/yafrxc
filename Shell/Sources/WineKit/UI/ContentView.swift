import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var log = "A18 Pro Head Unit Ready.\n"
    @State private var isInstalled = false

    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit").font(.largeTitle).bold()
            
            ScrollView {
                Text(log).font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color.black).foregroundColor(.green)
            .frame(height: 200).cornerRadius(10)

            if !isInstalled {
                Button("INSTALL ENGINE (1.4GB)") { installEngine() }
                .buttonStyle(.borderedProminent)
            } else {
                Button("LAUNCH WINE") { launchWine() }
                .buttonStyle(.borderedProminent).tint(.blue)
            }
        }.padding()
        .onAppear { checkInstallation() }
    }

    func checkInstallation() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let winePath = docs.appendingPathComponent("engine/bin/wine").path
        isInstalled = FileManager.default.fileExists(atPath: winePath)
    }

    func installEngine() {
        log += "Searching for engine_data.zip...\n"
        guard let zipURL = Bundle.main.url(forResource: "engine_data", withExtension: "zip") else {
            log += "❌ Error: Engine zip not found in bundle.\n"
            return
        }

        log += "Copying to Documents...\n"
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let targetURL = docs.appendingPathComponent("engine_data.zip")
        
        try? FileManager.default.removeItem(at: targetURL)
        try? FileManager.default.copyItem(at: zipURL, toPath: targetURL.path)
        
        log += "Installation complete! \nManual Step: Use Files app to 'Uncompress' engine_data.zip inside the WineKit folder.\n"
        isInstalled = true
    }

    func launchWine() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let engineDir = docs.appendingPathComponent("engine")
        let wineBin = engineDir.appendingPathComponent("bin/wine").path
        
        log += "Triggering JIT...\n"
        trigger_jit_bridge()
        
        var pid: pid_t = 0
        let env = [
            "DYLD_LIBRARY_PATH=\(engineDir.path)/lib:\(engineDir.path)/extra_files",
            "WINEPREFIX=\(docs.path)/.wine",
            "PATH=\(engineDir.path)/bin:/usr/bin:/bin"
        ]
        var envp = env.map { strdup($0) } + [nil]
        var argv = [strdup(wineBin), strdup("winecfg"), nil]
        
        let result = posix_spawn(&pid, wineBin, nil, nil, &argv, &envp)
        log += result == 0 ? "🚀 Running! PID: \(pid)\n" : "❌ Failed: \(result)\n"
    }
}
