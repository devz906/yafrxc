import Foundation
import os

public struct Logger {
    public static let shared = os.Logger(subsystem: "com.yafrxc.WineKit", category: "General")
    
    // Simple init that doesn't need external types
    public init() {}
    
    func log(_ message: String) {
        Self.shared.info("\(message)")
    }
}
