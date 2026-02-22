import SwiftUI

public struct ContentView: View {
    // We use a simple message string for now to avoid @State compilation issues in raw Swift PM
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Text("WineKit A18 Pro")
                .font(.largeTitle)
                .bold()
            
            Button("LAUNCH WINE") {
                print("Launching Engine...")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}
