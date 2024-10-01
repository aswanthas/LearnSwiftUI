//
//  FloatingMenu.swift
//  LearnSwiftUI
//
//  Created by Aswanth K on 01/10/24.
//

import SwiftUI

struct FloatingMenu: View {
    let colums = [
        GridItem(.flexible(),  spacing: 10),
        GridItem(.flexible(),  spacing: 10),
        GridItem(.flexible(),  spacing: 10)
    ]
    var body: some View {
        VStack {
            Text("Floating Menu")
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(0..<10, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .frame(height: 150)
                            .foregroundStyle(.gray)
                            .contextMenu(ContextMenu(menuItems: {
//                                Text("First")
//                                Text("First")
//                                Text("First")
                                Button {
                                    // Action
                                } label: {
                                    Label("Edit", systemImage: "pencil")
                                }
                                Button {
                                    // Action
                                } label: {
                                    Label("Share", systemImage: "square.and.arrow..up")
                                }
                                Button {
                                    // Action
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }


                            }))
                    }
                }
            }.padding()
            
        }
    }
}

#Preview {
    FloatingMenu()
}
