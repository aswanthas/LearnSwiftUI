//
//  TabView.swift
//  LearnSwiftUI
//
//  Created by Aswanth K on 28/08/24.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
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
        .onAppear(perform: {
            UITabBar.appearance().barTintColor = UIColor(.indigo)
            UITabBar.appearance().backgroundColor = .lightGray
            UITabBar.appearance().unselectedItemTintColor = .systemIndigo
        })
    }
}

#Preview {
    TabViewExample()
}
