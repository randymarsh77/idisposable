public protocol IDisposable {
	func dispose()
}

@available(macOS 10.15.0, *)
public protocol IAsyncDisposable {
	func dispose() async
}

public enum ObjectDisposedException: Error {
	case objectDisposed
}
