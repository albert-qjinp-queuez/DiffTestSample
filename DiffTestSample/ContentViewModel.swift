//
//  ContentViewModel.swift
//  DiffTestSample
//
//  Created by Albert Q Park on 9/3/25.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    @Published var text = "Hello"
    
    func test1() {
        if text == "Hello" {
            text = "World"
        } else {
            text = "Jello"
        }
    }
    
    func test2() {
        text = "What a wonderful world!"
    }
}
