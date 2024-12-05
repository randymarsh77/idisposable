public func using(_ disposable: IDisposable, closure: () -> Void) {
	closure()
	disposable.dispose()
}

public func using(_ disposable: IDisposable, closure: () throws -> Void) {
	defer { disposable.dispose() }
	try? closure()
}

public func using<T: IDisposable>(_ disposable: T, closure: (_ arg: T) -> Void) {
	closure(disposable)
	disposable.dispose()
}

public func using<T: IDisposable>(_ disposable: T, closure: (_ arg: T) throws -> Void) {
	defer { disposable.dispose() }
	try? closure(disposable)
}
