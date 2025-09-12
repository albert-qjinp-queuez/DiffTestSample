//
//  DiffSampleXCTests.swift
//  DiffTestSampleTests
//
//  Created by Albert Q Park on 9/4/25.
//

import XCTest
@testable import DiffTestSample

final class DiffSampleXCTests: XCTestCase {
    var viewModel = ContentViewModel()
    
    override func setUpWithError() throws {
        self.viewModel = ContentViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testXCToggleOne() throws {
        XCTAssertTrue(viewModel.text == "Hello")
        viewModel.test1()
        XCTAssertTrue(viewModel.text == "World")
    }

    func testXCToggle2() throws {
        viewModel.text = "World"
        XCTAssertTrue(viewModel.text == "World")
        viewModel.test1()
        XCTAssertTrue(viewModel.text == "Hello")
    }
    
    func testXCBtton2() throws {
        XCTAssertTrue(viewModel.text == "Hello")
        viewModel.test2()
        XCTAssertTrue(viewModel.text == "What a wonderful world!")
    }

}
