import XCTest
import GroupedSection


final class GroupedSectionTests: XCTestCase {
    func testExample() {
        
        let names = ["Alice", "Bob", "Abe"]
        
        let sections = GroupedSection.group(names) { String($0.first!) }
        
        XCTAssertEqual(2, sections.count)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
