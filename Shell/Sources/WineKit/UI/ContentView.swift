import SwiftUI
import Foundation

// Import the low-level process spawner
#if canImport(Darwin)
import Darwin
#endif

public struct ContentView: View {
    @State private var logOutput = "A18 Pro [JIT ACTIVE] Ready...\n"
    @State private var isBooting = false
    
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit A18 Terminal").font(.headline)
            
            ScrollView {
                Text(logOutput)
                    .font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.green)
            }
            .frame(height: 350)

            Button(action: {
                spawnWine()
            }) {
                Text(isBooting ? "RUNNING..." : "LAUNCH WINECFG")
                    .bold()
                    .frame(width: 250, height: 55)
                    .background(isBooting ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
    }
    
    func spawnWine() {
        isBooting = true
        let winePath = Bundle.main.bundlePath + "/wine/wine"
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].path
        
        logOutput += "Setting WINEPREFIX...\n"
        setenv("WINEPREFIX", docs + "/.wine", 1)
        setenv("DYLD_LIBRARY_PATH", Bundle.main.bundlePath + "/wine/lib", 1)
        
        var pid: pid_t = 0
        let args: [String] = ["wine", "winecfg"]
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { strdup($0) } + [nil]
        
        logOutput += "Spawning process via posix_spawn...\n"
        
        let result = posix_spawn(&pid, winePath, nil, nil, argv, environ)
        
        if result == 0 {
            logOutput += "SUCCESS! Process ID: \(pid)\n"
            logOutput += "Wine is now initializing in the background.\n"
        } else {
            let errorDescription = String(cString: strerror(result))
            logOutput += "SPAWN ERROR: \(errorDescription) (Code: \(result))\n"
        }
        
        // Clean up memory
        for ptr in argv { free(ptr) }
    }
}
