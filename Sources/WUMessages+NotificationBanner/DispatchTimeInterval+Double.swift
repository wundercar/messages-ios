import Foundation

/// Extension to convert DispatchTimeInterval into Double
extension DispatchTimeInterval {
    var double: Double? {
        var result: Double? = 0
        
        switch self {
        case .seconds(let value):
            result = Double(value)
        case .milliseconds(let value):
            result = Double(value) * 0.001
        case .microseconds(let value):
            result = Double(value) * 0.000001
        case .nanoseconds(let value):
            result = Double(value) * 0.000000001
        case .never:
            result = nil
        @unknown default:
            fatalError()
        }
        
        return result
    }
}
