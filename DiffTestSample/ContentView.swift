//
//  ContentView.swift
//  DiffTestSample
//
//  Created by Albert Q Park on 9/3/25.
//

import SwiftUI
import Combine

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.text)
            Button(action: {
                viewModel.test1()
            }) {
                Text("Test1")
            }
            Button(action: {
                viewModel.test2()
            }) {
                Text("Test2")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
