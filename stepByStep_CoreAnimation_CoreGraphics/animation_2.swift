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
    
    var body: some View {
        contents
    }
    
    private var contents: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            HStack(spacing: 15) {
//                RainEffect(size: size)
                ForEach(1...Int(size.width / 10), id: \.self) { _ in
                    RainEffect(size: size)
                    
                }
            }
            .padding(.horizontal)
            
        }
    }
}

struct RainEffect: View {
    var size: CGSize
    @State var startAnimation: Bool = false
    @State var random: Int = 0
    
    var body: some View {
        
        let randomHeight: CGFloat = .random(in: (size.height / 2)...size.height)
        
        VStack {
            //MARK: Iterating Shape
            ForEach(0..<constant.count, id: \.self) { index in
                
//                let rainHeight = Array(constant)[getRandomIndex(index: index)]
//                let rainHeight = random.getRandomIndex(index: index)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .frame(width: 1, height: 60)
            }
        }
        //                .offset(y: startAnimation ? 0 : -size.height)
        //mask 코드 작성
        .mask(alignment: .top) {
            Rectangle()
                .fill(
                    LinearGradient(colors: [
                        .clear,
                        .black.opacity(0.1),
                        .black.opacity(0.2),
                        .black.opacity(0.3),
                        .black.opacity(0.5),
                        .black.opacity(0.7),
                        .black
                    ], startPoint: .top, endPoint: .bottom)
                    
                )
                .frame(height: size.height / 2)
                // Animating
                .offset(y: startAnimation ? size.height : -randomHeight)
            
        }
        .onAppear {
            // Moving Slowly down with linear Animation
            withAnimation(.linear(duration: 3).delay(.random(in: 0...2)).repeatForever(autoreverses: false)) {
                startAnimation = true
            }
        }
        .onReceive(Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()) { _ in
            
            random = Int.random(in: 0..<constant.count)
        }
    }
    
    func getRandomIndex(index: Int) -> Int {
        
        let max = constant.count
        
        if (index + random) > max {
            if (index - random) < 0 {
                return index
            }
            return (index - random)
        } else {
            return (index + random)
        }
        
    }
    
}


struct animation_2_Previews: PreviewProvider {
    static var previews: some View {
        animation_2()
    }
}
