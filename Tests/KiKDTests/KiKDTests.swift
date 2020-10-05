import XCTest
@testable import Antlr4
@testable import KiCore
@testable import KiKD

final class KiKDTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(KiKD().text, "Hello, World!")
        XCTAssertEqual(KiCore().text, "Hello, World!")
    }
    
    func testLexer() throws {
        /*
        let location = "res/test.txt"
        let fileContent = try NSString(contentsOfFile: location, encoding: String.Encoding.utf8.rawValue)
        */
        print("start")
        
        let thisSourceFile = URL(fileURLWithPath: #file)
        let thisDirectory = thisSourceFile.deletingLastPathComponent()
        let resourceURL = thisDirectory.appendingPathComponent("res/literal_tests.kd")


        let interp = try Interpreter(try ANTLRFileStream(resourceURL.path))
    }

    static var allTests = [
        ("testExample", testExample),
        ("testLexer", testLexer)
    ]
}
