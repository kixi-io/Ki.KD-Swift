import XCTest

@testable import Antlr4
@testable import KiCore
@testable import KiKD

final class KDTests: XCTestCase {
    
    func testInterpreter() throws {
        print("start")
        
        let thisSourceFile = URL(fileURLWithPath: #file)
        let thisDirectory = thisSourceFile.deletingLastPathComponent()
        let resourceURL = thisDirectory.appendingPathComponent("res/string_tests.kd")

        let tags = try Interpreter().read(try ANTLRFileStream(resourceURL.path))

        for tag in tags { print(tag.description) }
    }
    
    func testTagStructures() throws {
        let kd = try KD.read("""
        @Family
        Grandparent name="Yi" {
            Parent age=35 name="Xavier" {
                Child name="José" soccer=true {
                    grandchild name="Lucia"
                }
            }
        }
        """)
        print(kd)
        
        XCTAssertEqual(kd.description, """
        @Family
        Grandparent name="Yi" {
            Parent age=35 name="Xavier" {
                Child name="José" soccer=true {
                    grandchild name="Lucia"
                }
            }
        }
        """.trim())
    }

    func testTags() {
        let tag = Tag("Lemur")
        XCTAssertEqual("Lemur", tag.description)
        
        tag.values.append(23)
        XCTAssertEqual("Lemur 23", tag.description)
        
        tag["kilos"] = 52
        XCTAssertEqual("Lemur 23 kilos=52", tag.description)
        
        tag["name"] = "fluffy"
        // print("Lemur 23 " + tag.attributes.format(kvSeparator: " ", keyFormatter: KD.formatter, sorted: true))
        XCTAssertEqual("Lemur 23 " + tag.attributes.format(pairSeparator: " ",
                                                           keyFormatter: KD.formatter, valueFormatter: KD.formatter,
                                                           sorted: true), tag.description)
    }

    static var allTests = [
        ("testLexer", testInterpreter),
        ("testTags", testTags)
    ]
}
