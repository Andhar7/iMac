//
//  LeftHoles.swift
//  iMac
//
//  Created by Andrej Kling on 13.07.21.
//

import SwiftUI

struct LeftHoles: View {
    var body: some View {
     //   ZStack {
          //  Color("Color")
            HStack(spacing: 8) {
                
                CustomHole(image: "")
                    .padding(.top, 6)
                
                CustomHole(image: "")
                    .padding(.top, 6)
                
                CustomHole(image: "bolt.fill")
                
                CustomHole(image: "bolt.fill")
            }
     //   }
    }
}

struct LeftHoles_Previews: PreviewProvider {
    static var previews: some View {
        LeftHoles()
    }
}

struct CustomHole : View {
    
    let image : String
    
    var body: some View {
        
        VStack(spacing: 2) {
            
            Image(systemName: image)
                 .font(.system(size: 5, weight: .regular, design: .serif))
                 .foregroundColor(.white).opacity(0.2)
            
            Capsule()
                .frame(width: 5, height: 12)
                .overlay(
                    
                    HStack {
                    
                    Divider()
                        .overlay(Color.white).frame(height: 8).blur(radius: 0.3)
                }
                )
            
        }
    }
}

