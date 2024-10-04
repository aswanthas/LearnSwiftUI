//
//  AnimationText.swift
//  LearnSwiftUI
//
//  Created by Aswanth K on 04/10/24.
//

import SwiftUI

struct AnimationText: View {
    @State private var moveGradient = true
    var textValue = "Slider here"
    var body: some View {
        let screenSize = UIScreen.main.bounds.size
        Rectangle().overlay {
            LinearGradient(colors: [.clear, .white, .clear], startPoint: .leading, endPoint: .trailing)
                .frame(width: 50)
                .offset(x: moveGradient ? -screenSize.width/2 : screenSize.width/2)
        }
        .animation(.linear(duration: 3).repeatForever(autoreverses: false), value: moveGradient)
        .mask({
            Text(textValue)
                .foregroundStyle(.black)
                .font(.largeTitle)
        })
        .onAppear {
            self.moveGradient.toggle()
        }
    }
}

#Preview {
    AnimationText()
}
