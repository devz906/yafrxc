import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var logOutput = "A18 Pro [Titan-Engine] Ready...\n"
    
    public init() {}

    public var body: some View {
        VStack {
            Text("WineKit Terminal").font(.headline)
            ScrollView { Text(logOutput).font(.caption).monospaced().padding() }
                .background(Color.black).foregroundColor(.green).frame(height: 300)
            Button("INITIALIZE & LAUNCH") { setupAndRun() }.buttonStyle(.borderedProminent)
        }
    }
    
    func setupAndRun() {
        let fileManager = FileManager.default
        let docsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let bundlePath = Bundle.main.bundlePath
        let engineRoot = bundlePath + "/Frameworks/engine"
        
        // 1. Create a "Work" folder in Documents to bypass some Sandbox restrictions
        let workDir = docsURL.appendingPathComponent("bin")
        try? fileManager.createDirectory(at: workDir, withIntermediateDirectories: true)
        
        let wineDocPath = workDir.appendingPathComponent("wine").path
        let sourceWine = engineRoot + "/bin/wine"
        
        // 2. Copy Wine to Documents if it's not there
        if !fileManager.fileExists(atPath: wineDocPath) {
            logOutput += "Installing Wine to Docs...\n"
            try? fileManager.removeItem(atPath: wineDocPath)
            try? fileManager.copyItem(atPath: sourceWine, toPath: wineDocPath)
            // Force executable permissions in the new home
            var attributes = [FileAttributeKey: Any]()
            attributes[.posixPermissions] = 0o755
            try? fileManager.setAttributes(attributes, ofItemAtPath: wineDocPath)
        }

        logOutput += "Triggering JIT...\n"
        #if !targetEnvironment(simulator)
        trigger_jit_bridge()
        #endif

        var pid: pid_t = 0
        let args = [wineDocPath, "winecfg"]
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { strdup($0) } + [nil]
        
        var env = ProcessInfo.processInfo.environment
        env["DYLD_LIBRARY_PATH"] = "\(engineRoot)/lib:\(engineRoot)/extra_files:\(bundlePath)/Frameworks"
        env["WINEPREFIX"] = docsURL.appendingPathComponent(".wine").path
        env["PATH"] = "\(workDir.path):\(engineRoot)/bin:/usr/bin:/bin"
        env["WINEDEBUG"] = "err+all"
        
        let envp: [UnsafeMutablePointer<CChar>?] = env.map { (key, value) in 
            strdup("\(key)=\(value)") 
        } + [nil]
        
        logOutput += "Spawning from Docs: \(wineDocPath)\n"
        let result = posix_spawn(&pid, wineDocPath, nil, nil, argv, envp)
        
        if result == 0 {
            logOutput += "🚀 SPAWNED! PID: \(pid)\n"
            logOutput += "Wait 30s for '.wine' to appear in Files app...\n"
        } else {
            let errorMsg = String(cString: strerror(result))
            logOutput += "CRASH: \(errorMsg) (Code: \(result))\n"
        }
        
        for ptr in argv { if let p = ptr { free(p) } }
        for ptr in envp { if let p = ptr { free(p) } }
    }
}
