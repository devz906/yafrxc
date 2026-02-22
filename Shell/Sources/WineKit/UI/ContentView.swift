import SwiftUI
import Foundation

// Tell Swift that this function exists in our C file
@_silgen_name("trigger_jit_bridge")
func trigger_jit_bridge()

public struct ContentView: View {
    @State private var logOutput = "A18 Pro [JIT-Link Mode] Ready...\n"
    @State private var isBooting = false
    
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
        let winePath = Bundle.main.bundlePath + "/Frameworks/wine"
        
        logOutput += "Triggering JIT Breakpoint 0xf00d...\n"
        #if !targetEnvironment(simulator)
        trigger_jit_bridge()
        #endif

        var pid: pid_t = 0
        let args = ["wine", "winecfg"]
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { strdup($0) } + [nil]
        
        logOutput += "Spawning process...\n"
        let result = posix_spawn(&pid, winePath, nil, nil, argv, environ)
        
        if result == 0 {
            logOutput += "🚀 SUCCESS! PID: \(pid)\n"
        } else {
            let errorMsg = String(cString: strerror(result))
            logOutput += "SPAWN ERROR: \(errorMsg) (Code: \(result))\n"
        }
        
        for ptr in argv { if let p = ptr { free(p) } }
    }
}
