//
//  ImageGalleryView.swift
//  LearnSwiftUI
//
//  Created by Aswanth K on 28/08/24.
//

import SwiftUI

struct ImageGalleryView: View {
    let images = ["montain", "sky", "sea"]
    var body: some View {
        VStack {
            TabView {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .frame(height: 300)
        }
    }
}

#Preview {
    ImageGalleryView()
}
