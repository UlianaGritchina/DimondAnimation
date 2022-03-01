//
//  ContentView.swift
//  Animaton
//
//  Created by Ульяна Гритчина on 24.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var mainHeight = UIScreen.main.bounds.height
    var body: some View {
        
        VStack {
            DiamondView()
                .frame(width: 220, height: 200)
                .offset(x: 0, y: show ? 0 : mainHeight)
                .rotationEffect(.degrees(show ? 0 : 90))
                .animation(.spring(response: 0.5,
                                   dampingFraction: 0.5,
                                   blendDuration: 0),
                           value: show)
            
            Button(action: {
                show.toggle()
            }) {
                Text(show ? "Hide" : "Show")
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
