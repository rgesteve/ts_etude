import XCTest
import SwiftTreeSitter
import TreeSitterFirsttry

final class TreeSitterFirsttryTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_firsttry())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading My first try at a TS grammar grammar")
    }
}
