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
        
        // --- THE JIT TRIGGER (For Amethyst-MeloNX.js) ---
        logOutput += "Triggering JIT Breakpoint 0xf00d...\n"
        #if !targetEnvironment(simulator)
        var trigger: Int = 0
        asm volatile("mov x16, #1; brk #0xf00d" : "=r" (trigger) : : "x16")
        #endif
        // -----------------------------------------------

        var pid: pid_t = 0
        let args = ["wine", "winecfg"]
        
        // FIXED: Using $0 to correctly map the arguments
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { strdup($0) } + [nil]
        
        logOutput += "Spawning process...\n"
        let result = posix_spawn(&pid, winePath, nil, nil, argv, environ)
        
        if result == 0 {
            logOutput += "🚀 SUCCESS! PID: \(pid)\n"
        } else {
            let errorMsg = String(cString: strerror(result))
            logOutput += "SPAWN ERROR: \(errorMsg) (Code: \(result))\n"
        }
        
        // Cleanup memory
        for ptr in argv { if let p = ptr { free(p) } }
    }
}
