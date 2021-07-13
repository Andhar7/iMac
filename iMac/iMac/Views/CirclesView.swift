//
//  CirclesView.swift
//  iMac
//
//  Created by Andrej Kling on 13.07.21.
//

import SwiftUI

struct CirclesView: View {
    var body: some View {
        
        ZStack {
            
            Capsule()
                .fill(Color("inside"))
                .frame(width: 34, height: 58, alignment: .center)
            
            VStack {
                
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 15, height: 15, alignment: .center)
                    .overlay(
                        Rectangle()
                            .fill(RadialGradient(gradient: Gradient(colors: [Color.white.opacity(0.001), Color.black]), center: .center, startRadius: 1, endRadius: 4))
                            .clipShape(Circle())
                            .frame(width: 13, height: 13, alignment: .center)
                            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.5), radius: 5, x: -5, y: -5)
                    )
                    .padding(2)
                    .overlay(
                        Circle()
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .top, endPoint: .bottom), lineWidth: 1)
                    )
                    .padding(2)
                    .overlay(
                        Circle()
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .top, endPoint: .bottom), lineWidth: 1)
                    )
            }
            .padding(.bottom)
        }
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}
