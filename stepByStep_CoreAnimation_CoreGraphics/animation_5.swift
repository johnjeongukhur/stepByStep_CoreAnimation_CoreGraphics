//
//  animation_5.swift
//  stepByStep_CoreAnimation_CoreGraphics
//
//  Created by John Hur on 2022/08/30.
//

/*
 Udemy
 SwiftUI, Animation Foundations: Fundamentals
 Section 4: Learn Core Animation Techniques with SwiftUI
 21
 */

import SwiftUI

struct animation_5: View {
    
    @State private var textTransparency: Double = 1
    @State private var moveDot: CGFloat = 0
    @State private var dotTransparency: Double = 0
    @State private var removeDot: CGFloat = 1
    @State private var animateWith: CGFloat = 144
    @State private var showCheckmark = 0.0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 48)
                .frame(width: 144, height: 48, alignment: .center)
                .shadow(radius: 14)
                .animation(Animation.timingCurve(0.99, -0.99, 0.32, 1.6).delay(2.45))
            
            Path { path in
                path.move(to: CGPoint(x: -1, y: -1))
                path.addCurve(to: CGPoint(x: 21, y: 26), control1: CGPoint(x: -1, y: -1), control2: CGPoint(x: 22, y: 26))
                path.addCurve(to: CGPoint(x: 56, y: -28), control1: CGPoint(x: 20, y: 26), control2: CGPoint(x: 56, y: -28))
                path.move(to: CGPoint(x: -1, y: -1))
            }
            .trim(from: 0.0, to: showCheckmark)
            .stroke()
            
        }
        
        
        
    }
}
