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
            Group {
                NavigationStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(0..<10) {_ in
                                HStack {
                                    Spacer()
                                    Text("ttt")
                                        .padding()
                                    Spacer()
                                }
                            }
                        }
                    }
                    .frame(height: .infinity)
                    .navigationTitle("Checking")
                    .toolbarBackground(.automatic, for: .navigationBar)
                    .toolbarBackground(.gray, for: .navigationBar)
                }
                .tabItem { Label("First", systemImage: "1.circle") }
                
                SecondView()
                    .tabItem { Label("Second", systemImage: "2.circle") }
            }
            .toolbarBackground(.indigo, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.light, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second View")
        }
    }
}
