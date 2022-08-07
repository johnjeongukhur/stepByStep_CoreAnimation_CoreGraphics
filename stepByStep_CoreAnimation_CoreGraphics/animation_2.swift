//
//  animation_2.swift
//  stepByStep_CoreAnimation_CoreGraphics
//
//  Created by John Hur on 2022/08/07.
//

/*
 Build a rain animation
 */

import SwiftUI

let constant = "iaiseufhasieufhasieufhiruaghiaurhgilaurh"

struct animation_2: View {
    @State var startAnimation: Bool = false
    
    var body: some View {
        contents
    }
    
    private var contents: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            HStack(spacing: 15) {
                VStack {
                    //MARK: Iterating Shape
                    ForEach(0..<constant.count, id: \.self) { index in
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: 1, height: 60)
                    }
                }
                .offset(y: startAnimation ? 0 : -size.height)
            }
            .padding(.horizontal)
            
        }
        .onAppear {
            // Moving Slowly down with linear Animation
            withAnimation(.linear(duration: 12)) {
                startAnimation = true
            }
        }
    }
}

struct animation_2_Previews: PreviewProvider {
    static var previews: some View {
        animation_2()
    }
}
