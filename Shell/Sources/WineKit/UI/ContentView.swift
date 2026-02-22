import SwiftUI
import Foundation

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
        
        // --- THE JIT TRIGGER ---
        logOutput += "Sending 0xf00d JIT Signal...\n"
        // This triggers the 'CMD_PREPARE_REGION' in your Amethyst script
        // x16 = 1 (Prepare Region), brk #0xf00d (The Hook)
        var trigger: Int = 0
        #if targetEnvironment(simulator)
        #else
        asm volatile("mov x16, #1; brk #0xf00d" : "=r" (trigger) : : "x16")
        #endif
        // -----------------------

        var pid: pid_t = 0
        let args = ["wine", "winecfg"]
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { strdup(/bin/bash) } + [nil]
        
        let result = posix_spawn(&pid, winePath, nil, nil, argv, environ)
        
        if result == 0 {
            logOutput += "🚀 SUCCESS! PID: \(pid)\n"
        } else {
            logOutput += "SPAWN ERROR: \(String(cString: strerror(result))) (Code: \(result))\n"
        }
    }
}
