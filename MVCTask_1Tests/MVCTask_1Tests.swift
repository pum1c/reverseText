//
//  MVCTask_1Tests.swift
//  MVCTask_1Tests
//
//  Created by Вадим Амбарцумян on 13.05.2023.
//

import XCTest
@testable import MVCTask_1

final class MVCTask_1Tests: XCTestCase {

    var textReverser: TextReverser!
    override func setUpWithError() throws {
        try super.setUpWithError()
        textReverser = TextReverser()
    }

    override func tearDownWithError() throws {
        textReverser = nil
        try super.tearDownWithError()
    }

    func testExample() throws {
        func testReverseString_emptyString() {
            let input = ""
            let expected = ""
            let actual = textReverser.reverseText(text: input)
            XCTAssertEqual(expected, actual)
        }
        
        func testReverseString_singleWord() {
            let input = "hello"
            let expected = "olleh"
            let actual = textReverser.reverseText(text: input)
            XCTAssertEqual(expected, actual)
        }
        
        func testReverseString_multipleWords() {
            let input = "hello world"
            let expected = "dlrow olleh"
            let actual = textReverser.reverseText(text: input)
            XCTAssertEqual(expected, actual)
        }



    }

    func testPerformanceExample() throws {
        measure {

        }
    }
}
