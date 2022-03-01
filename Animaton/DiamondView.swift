//
//  SwiftUIView.swift
//  Animaton
//
//  Created by Ульяна Гритчина on 28.02.2022.
//

import SwiftUI

struct DiamondView: View {
    var body: some View {
        
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: 90, y: 10))
                    path.addLine(to: CGPoint(x: 130, y: 10))
                    path.addLine(to: CGPoint(x: 150, y: 30))
                    path.addLine(to: CGPoint(x: 110, y: 90))
                    path.addLine(to: CGPoint(x: 70, y: 30))
                }.foregroundColor(.blue.opacity(0.5))
                
                Path { path in
                    path.move(to: CGPoint(x: 70, y: 30))
                    path.addLine(to: CGPoint(x: 150, y: 30))
                    
                    path.move(to: CGPoint(x: 110, y: 88))
                    path.addLine(to: CGPoint(x: 130, y: 30))
                    
                    path.move(to: CGPoint(x: 110, y: 88))
                    path.addLine(to: CGPoint(x: 90, y: 30))
                    
                    path.move(to: CGPoint(x: 110, y: 10))
                    path.addLine(to: CGPoint(x: 90, y: 30))
                    
                    path.move(to: CGPoint(x: 110, y: 10))
                    path.addLine(to: CGPoint(x: 130, y: 30))
                    
                    path.move(to: CGPoint(x: 130, y: 10))
                    path.addLine(to: CGPoint(x: 130, y: 30))
                    
                    path.move(to: CGPoint(x: 90, y: 30))
                    path.addLine(to: CGPoint(x: 90, y: 10))
                    
                }
                .stroke()
                .foregroundColor(.white)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiamondView().frame(width: 200, height: 200)
    }
}
