//
//  animation_4.swift
//  stepByStep_CoreAnimation_CoreGraphics
//
//  Created by John Hur on 2022/08/29.
//

import SwiftUI

struct animation_4: View {
    @State var rotation = 0.0
    @State var scaleXY = 1.0
    
    // Initial position
    @State var positionX = -150
    @State var objectColor = Color(.blue)
    
    var body: some View {
        VStack(alignment: .center) {
            Rectangle()
                .fill(objectColor)
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(rotation))
                .scaleEffect(CGFloat(scaleXY))
                .offset(x: CGFloat(positionX))
                .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true).speed(4))
                .onAppear() {
                    rotation += 360
                    scaleXY += 1.1
                    positionX += 250
                    objectColor = .purple
                }
        }
    }
}

struct animation_4_Previews: PreviewProvider {
    static var previews: some View {
        animation_4()
    }
}
