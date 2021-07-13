//
//  MacView.swift
//  iMac
//
//  Created by Andrej Kling on 13.07.21.
//

import SwiftUI

struct MacView: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ZStack(alignment: .bottomLeading) {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(Color("Color"))
                        .frame(width: width - 21, height: height / 3.2, alignment: .center)
                    
                    Image("apple")
                        .resizable()
                        .frame(width: 55, height: 65, alignment: .center)
                        .padding(.bottom, 55)
                        .blendMode(.luminosity)
               
                }
                .overlay(
                    RectangleView()
                        .padding(.top, 265)
                )
                .overlay(CirclesView()
                            .padding(.top, 215)
                )
                
                LeftHoles()
                    .padding(.leading, 35)
                    .padding(.bottom)
            }
            
            LeftPowerButton()
                .padding(.trailing)
                .padding(.bottom, 10)
        }
    }
}

struct MacView_Previews: PreviewProvider {
    static var previews: some View {
        MacView()
    }
}
