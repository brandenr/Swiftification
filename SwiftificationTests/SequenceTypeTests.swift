//
// Copyright (c) 2015 Hilton Campbell
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import XCTest
import Swiftification

class SequenceTypeTests: XCTestCase {
    
    func testMapFilter() {
        let array = [1, 2, 3]
        let expected = ["1", "2", "3"]
        let actual = array.map { "\($0)" }
        XCTAssertEqual(expected, actual)
    }
    
    func testTakeFirst() {
        let array = [1, 2, 3]
        let expected = 3
        let actual = array.takeFirst { $0 > 2 }
        XCTAssertEqual(expected, actual)
    }
    
    func testUnique() {
        let array = [1, 1, 2, 2, 3, 4]
        let unique = array.unique()
        XCTAssertTrue(array.count == 6)
        XCTAssertTrue(unique.count == 4)
    }
    
    func testUniqueBy() {
        let array = [(a: 1, b: 1), (a: 1, b: 2), (a: 2, b: 2)]
        let unique = array.uniqueBy { $0.a }
        XCTAssertTrue(array.count == 3)
        XCTAssertTrue(unique.count == 2)
    }
    
    func testAny() {
        let array = [1, 2, 3]
        XCTAssertTrue(array.any({ $0 == 1 }))
        XCTAssertFalse(array.any({ $0 == 4 }))
    }
    
}