import SwiftUI

public struct ContentView: View {
    @State private var status = "Ready for A18 Pro"
    @State private var isRunning = false
    
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Image(systemName: isRunning ? "cpu.fill" : "terminal.fill")
                .font(.system(size: 80))
                .foregroundColor(isRunning ? .green : .blue)
            
            Text("WineKit Engine")
                .font(.largeTitle).bold()
            
            Text(status)
                .multilineTextAlignment(.center)
                .padding()

            Button(action: {
                triggerWine()
            }) {
                Text(isRunning ? "RUNNING..." : "LAUNCH WINE")
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(isRunning ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(isRunning)
        }
    }
    
    func triggerWine() {
        isRunning = true
        status = "Accessing /wine directory..."
        
        // Find the path to the engine we injected
        let winePath = Bundle.main.bundlePath + "/wine/bin/wine"
        let exists = FileManager.default.fileExists(atPath: winePath)
        
        if exists {
            status = "Engine Found. Attempting Boot..."
            // In a real sideloaded environment, we use posix_spawn or NSTask
            // For now, let's verify the environment can see the files
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.status = "Success: Engine detected at \(winePath). Verification complete."
            }
        } else {
            status = "Error: Wine binary not found at /wine/bin/wine"
            isRunning = false
        }
    }
}
