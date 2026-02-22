import SwiftUI

public struct ContentView: View {
    @State private var logOutput = "A18 Pro [JIT ENABLED] Standby...\n"
    @State private var isBooting = false
    
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            HStack {
                Circle().fill(Color.green).frame(width: 10, height: 10)
                Text("JIT ACTIVE").font(.caption).bold()
            }
            
            Text("WineKit Terminal").font(.headline)
            
            ScrollViewReader { proxy in
                ScrollView {
                    Text(logOutput)
                        .font(.system(.caption, design: .monospaced))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.green)
                        .id("log")
                }
                .frame(height: 350)
            }

            Button(action: {
                bootWineConfig()
            }) {
                Text(isBooting ? "JIT EMULATING..." : "LAUNCH WINECFG")
                    .bold()
                    .frame(width: 250, height: 55)
                    .background(isBooting ? Color.orange : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
        }
        .padding()
    }
    
    func bootWineConfig() {
        isBooting = true
        let winePath = Bundle.main.bundlePath + "/wine/wine"
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].path
        
        // Essential JIT Environment
        setenv("WINEPREFIX", docs + "/.wine", 1)
        setenv("DYLD_LIBRARY_PATH", Bundle.main.bundlePath + "/wine/lib", 1)
        setenv("WINEDEBUG", "-all", 1) // Disable logs for max speed
        
        logOutput += "\n[JIT] Initializing Wine Config...\n"
        
        let task = Process()
        task.executableURL = URL(fileURLWithPath: winePath)
        // 'winecfg' is the classic test for Wine environments
        task.arguments = ["winecfg"] 
        
        let outputPipe = Pipe()
        task.standardOutput = outputPipe
        task.standardError = outputPipe
        
        // This handler lets us see output in real-time without freezing the UI
        outputPipe.fileHandleForReading.readabilityHandler = { handle in
            let data = handle.availableData
            if let line = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    self.logOutput += line
                }
            }
        }
        
        do {
            try task.run()
            logOutput += "[JIT] Process Spawned! Monitoring thread...\n"
        } catch {
            logOutput += "JIT BOOT ERROR: \(error.localizedDescription)\n"
            isBooting = false
        }
    }
}
