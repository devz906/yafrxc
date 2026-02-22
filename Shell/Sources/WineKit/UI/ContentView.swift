import SwiftUI

public struct ContentView: View {
    @State private var status = "A18 Pro Ready"
    @State private var logOutput = ""
    
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "bolt.fill")
                .font(.system(size: 60))
                .foregroundColor(.yellow)
            
            Text("WineKit A18 Pro")
                .font(.title).bold()
            
            ScrollView {
                Text(logOutput.isEmpty ? "Engine Output will appear here..." : logOutput)
                    .font(.system(.caption, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.black.opacity(0.8))
                    .foregroundColor(.green)
                    .cornerRadius(8)
            }
            .frame(height: 200)

            Button(action: {
                launchEngine()
            }) {
                Text("BOOT WINE")
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    
    func launchEngine() {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].path
        let winePath = Bundle.main.bundlePath + "/wine/wine"
        
        status = "Booting..."
        logOutput = "Setting WINEPREFIX to Documents...\n"
        
        // Environment Setup
        // WINEPREFIX must be a writable folder
        setenv("WINEPREFIX", docs + "/.wine", 1)
        setenv("WINEDEBUG", "+all", 1) // This will show us EVERYTHING in the log
        
        logOutput += "Executing: \(winePath)\n"
        
        // Using posix_spawn is complex in Swift, so we start with a simple check
        if FileManager.default.isExecutableFile(atPath: winePath) {
            logOutput += "Binary is EXECUTABLE. Attempting to spawn process...\n"
            // Note: Without JIT, this might hang for 30s as it creates the prefix
        } else {
            logOutput += "ERROR: Binary exists but lacks EXECUTE permissions.\n"
            logOutput += "Fixing permissions...\n"
            let res = chmod(winePath, 0o755)
            logOutput += "chmod result: \(res)\n"
        }
    }
}
