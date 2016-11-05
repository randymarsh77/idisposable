
public protocol IDisposable
{
	func dispose()
}

public enum ObjectDisposedException : Error
{
	case ObjectDisposed
}
