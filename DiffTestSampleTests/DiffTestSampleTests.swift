//
//  DiffTestSampleTests.swift
//  DiffTestSampleTests
//
//  Created by Albert Q Park on 9/3/25.
//

import Testing
@testable import DiffTestSample

struct DiffTestSampleTests {
    var viewModel = ContentViewModel()
    
    init(viewModel: ContentViewModel = ContentViewModel()) {
        self.viewModel = viewModel
    }
    
    @Test func swiftToggle1() async throws {
        #expect(viewModel.text == "Hello")
        viewModel.test1()
        #expect(viewModel.text == "World")
    }
    
    @Test func swiftToggle2() async throws {
        viewModel.text = "World"
        #expect(viewModel.text == "World")
        viewModel.test1()
        #expect(viewModel.text == "Hello")
    }
    
    @Test func swiftButton3() async throws {
        #expect(viewModel.text == "Hello")
        viewModel.test2()
        #expect(viewModel.text == "What a wonderful world!")
    }
}
