import SwiftUI

public struct ContentView: View {
    @State private var status = "Ready for A18 Pro"
    
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "terminal.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)
            
            Text("WineKit Minimalist")
                .font(.largeTitle)
                .bold()
            
            Text(status)
                .foregroundColor(.secondary)
            
            Button(action: {
                launchWine()
            }) {
                Text("LAUNCH WINE")
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    func launchWine() {
        status = "Initializing Engine..."
        // Simple logic to trigger the existing Wine binary
        print("A18 Pro: Launching Wine...")
    }
}
