//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Aswanth K on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("First view")
                .tabItem { Label("First", systemImage: "1.circle") }
            Text("Second view")
                .tabItem { Label("Second", systemImage: "2.circle") }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
