import SwiftUI
import Foundation

@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var logOutput = "A18 Pro [JIT-Link Mode] Ready...\n"
    
    public init() {}

    public var body: some View {
        VStack {
            Text("WineKit Terminal").font(.headline)
            ScrollView { Text(logOutput).font(.caption).monospaced().padding() }
                .background(Color.black).foregroundColor(.green).frame(height: 300)
            Button("LAUNCH WINECFG") { spawnWine() }.buttonStyle(.borderedProminent)
        }
    }
    
    func spawnWine() {
        let bundlePath = Bundle.main.bundlePath
        let engineRoot = bundlePath + "/Frameworks/engine"
        
        // Surgical path to the binary
        let winePath = engineRoot + "/bin/wine"
        
        logOutput += "Triggering JIT...\n"
        #if !targetEnvironment(simulator)
        trigger_jit_bridge()
        #endif

        var pid: pid_t = 0
        let args = [winePath, "winecfg"]
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { strdup($0) } + [nil]
        
        // FIXED SWIFT SYNTAX FOR ENVIRONMENT
        var env = ProcessInfo.processInfo.environment
        env["DYLD_LIBRARY_PATH"] = "\(engineRoot)/lib:\(engineRoot)/extra_files:\(bundlePath)/Frameworks"
        env["WINEPREFIX"] = NSHomeDirectory() + "/Documents/.wine"
        env["PATH"] = "\(engineRoot)/bin:/usr/bin:/bin"
        env["WINEDEBUG"] = "err+all"
        
        let envp: [UnsafeMutablePointer<CChar>?] = env.map { (key, value) in 
            strdup("\(key)=\(value)") 
        } + [nil]
        
        // Catch Errors
        let pipe = Pipe()
        var fileActions: posix_spawn_file_actions_t?
        posix_spawn_file_actions_init(&fileActions)
        posix_spawn_file_actions_adddup2(&fileActions, pipe.fileHandleForWriting.fileDescriptor, STDERR_FILENO)
        
        logOutput += "Checking: \(winePath)\n"
        if !FileManager.default.fileExists(atPath: winePath) {
            logOutput += "❌ ERROR: Wine binary not found at path!\n"
            return
        }

        let result = posix_spawn(&pid, winePath, &fileActions, nil, argv, envp)
        
        if result == 0 {
            logOutput += "🚀 SUCCESS! PID: \(pid)\n"
            let data = pipe.fileHandleForReading.readData(ofLength: 512)
            if let output = String(data: data, encoding: .utf8), !output.isEmpty {
                logOutput += "LOG: \(output)\n"
            }
        } else {
            let errorMsg = String(cString: strerror(result))
            logOutput += "SPAWN ERROR: \(errorMsg) (Code: \(result))\n"
        }
        
        posix_spawn_file_actions_destroy(&fileActions)
        for ptr in argv { if let p = ptr { free(p) } }
        for ptr in envp { if let p = ptr { free(p) } }
    }
}
