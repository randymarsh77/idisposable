public protocol IDisposable {
	func dispose()
}

@available(iOS 13.0.0, *)
@available(macOS 10.15.0, *)
public protocol IAsyncDisposable {
	func dispose() async
}

public enum ObjectDisposedException: Error {
	case objectDisposed
}
