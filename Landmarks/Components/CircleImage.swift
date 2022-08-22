//
//  CircleImage.swift
//  Landmarks
//
//  Created by 林雨腾 on 2022/8/9.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 4))
                    .foregroundColor(.white)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("wallpaper2"))
    }
}
