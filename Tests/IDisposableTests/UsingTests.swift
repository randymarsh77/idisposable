import XCTest

@testable import IDisposable

class TestDisposable: IDisposable {
	var onDispose: () -> Void
	init(_ onDispose: @escaping () -> Void) {
		self.onDispose = onDispose
	}

	public func dispose() {
		self.onDispose()
	}
}

class UsingTests: XCTestCase {
	func test() {
		var x: Int = 0
		let d = TestDisposable({ x += 1 })
		XCTAssertEqual(x, 0)
		using(d) {
			x += 1
			XCTAssertEqual(x, 1)
		}
		XCTAssertEqual(x, 2)
	}
}
