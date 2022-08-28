//
//  animation_3.swift
//  stepByStep_CoreAnimation_CoreGraphics
//
//  Created by John Hur on 2022/08/09.
//

import SwiftUI

struct animation_3: View {
    var body: some View {
        
        VStack {
            
            GeometryReader { proxy in
                let size = proxy.size
                
                //MARK: Water Drop
                ZStack {
                    
                    Image(systemName: "drop.fill")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                    // Streching in X Axis
                        .scaleEffect(x: 1.1, y: 1)
                    
                    // Wave form shape
                }
                .frame(width: size.width, height: size.height, alignment: .center)
            }
            .frame(width: 350)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(HexB9D4D3)
        
    }
    
    
    
}

//struct WaterWafe: Shape {
//
//}


struct animation_3_Previews: PreviewProvider {
    static var previews: some View {
        animation_3()
    }
}
