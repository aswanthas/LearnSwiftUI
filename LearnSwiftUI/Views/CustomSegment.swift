//
//  CustomSegment.swift
//  LearnSwiftUI
//
//  Created by Aswanth K on 02/10/24.
//

import SwiftUI

struct CustomSegment: View {
    @State private var selectedTab: SegmantButton = .all
    @State private var textWidth: CGFloat = 0
    @State private var textWidths: [CGFloat] = Array(repeating: 0, count: SegmantButton.allCases.count)
    @State private var indexInt: CGFloat = 0
    var body: some View {
        ScrollViewReader(content: { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(SegmantButton.allCases.indices, id: \.self) { index in
                        let tab = SegmantButton.allCases[index]
                        Text(tab.rawValue)
                            .background(
                                GeometryReader(content: { textGeo -> Color in
                                    DispatchQueue.main.async {
                                        textWidths[index] = textGeo.size.width
                                    }
                                    return Color.clear
                                })
                            )
                            .id(index)
                            .frame(width: 70, alignment: .leading)
                            .padding(.vertical)
                            .foregroundStyle(selectedTab == tab ? .primary : .secondary)
                            .onTapGesture {
                                withAnimation {
                                    indexInt = CGFloat(index)
                                    textWidth  = textWidths[index]
                                    selectedTab = tab
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    withAnimation {
                                        proxy.scrollTo(index, anchor: .center)
                                    }
                                }
                            }
                    }
                }
                .background(
                    GeometryReader(content: { geo in
                        Capsule()
                            .foregroundStyle(.gray.opacity(0.3))
                            .frame(width: textWidth + 30)
                            .offset(x: indexInt * 100)
                            .offset(x: -15)
                    })
                )
                .padding(.horizontal, 16)
            }
            .onAppear() {
                if textWidth == 0 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                        textWidth = textWidths[0]
                    }
                }
            }
            
        })
    }
}

#Preview {
    CustomSegment()
}
enum SegmantButton: String, CaseIterable {
    case all = "all"
    case fiction = "fiction"
    case mystery = "mystery"
    case romance = "romance"
    case action = "action"
    case comedy = "comedy"
}
