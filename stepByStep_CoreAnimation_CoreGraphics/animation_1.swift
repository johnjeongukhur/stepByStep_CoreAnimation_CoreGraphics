//
//  animation_1.swift
//  stepByStep_CoreAnimation_CoreGraphics
//
//  Created by John Hur on 2022/08/06.
//

import SwiftUI

struct animation_1: View {
    @State var firstSize: CGFloat = 0.5
    @State var secondSize: CGFloat = 1.3
    
    var repeatingAnimation: Animation {
        Animation
            .easeInOut(duration: 2)
            .repeatForever()
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
                .scaleEffect(firstSize)
                .onAppear {
                    withAnimation(self.repeatingAnimation) {
                        self.firstSize = 1.3
                    }
                }
            
            Spacer().frame(height: 30)
            
            Rectangle()
                .fill(.purple)
                .frame(width: 100, height: 100)
                .scaleEffect(secondSize)
                .onAppear {
                    withAnimation(self.repeatingAnimation) {
                        self.secondSize = 0.5
                    }
                }
        }

    }
}

struct animation_1_Previews: PreviewProvider {
    static var previews: some View {
        animation_1()
    }
}
