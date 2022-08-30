//
//  ContentView.swift
//  stepByStep_CoreAnimation_CoreGraphics
//
//  Created by John Hur on 2022/08/03.
//

/*
Let's start from simple one.
 */

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 30) {
                    NavigationLink(destination: animation_1()) {
                        Text("Move to animation_1")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: animation_2()) {
                        Text("Move to animation_2")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: animation_3()) {
                        Text("Move to animation_3")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: animation_4()) {
                        Text("Move to animation_4")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: animation_5()) {
                        Text("Move to animation_5")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: animation_6()) {
                        Text("Move to animation_6")
                    }.buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
