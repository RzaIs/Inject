import XCTest
@testable import Inject

final class InjectTests: XCTestCase {
    
    class InjectTest: Inject<EmptyDependency> {
        var data: String {
            "Hello World"
        }
    }
    
    func testExample() {
        let injectTest = InjectTest()
        XCTAssertEqual(injectTest.data, "Hello World")
    }
}
