//
//  RectangleView.swift
//  iMac
//
//  Created by Andrej Kling on 13.07.21.
//

import SwiftUI

struct RectangleView: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
        
        VStack(spacing: 0)  {
            
            ZStack(alignment: .top) {
                
                ZStack(alignment: .bottom) {
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color("ColorBottom"))
                        .frame(width: 100, height: 150, alignment: .center)
                    
                    ZStack(alignment: .bottom) {
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("ColorBottom"))
                            .frame(width: 100, height: 150, alignment: .center)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
                            .shadow(color: Color("ColorBottom").opacity(0.1), radius: 5, x: 5, y: 5)
                            .shadow(color: Color("ColorBottom").opacity(0.1), radius: 5, x: -5, y: -5)
                        
                        HStack {
                            
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorBottom")]), startPoint: .leading, endPoint: .trailing))
                                .frame(width: 31, height: 5 )
                                .blur(radius: 5)
                            
                            Spacer().frame(width: 38)
                            
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorBottom")]), startPoint: .trailing, endPoint: .leading))
                                .frame(width: 31, height: 5 )
                                .blur(radius: 5)
                        }
                    }
                }
                
                LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorBottom")]), startPoint: .top, endPoint: .bottom)
                // Color.white.opacity(0.4)
                    .frame(width: 100, height: 23, alignment: .center)
                    .shadow(color: Color("ColorBottom").opacity(0.1), radius: 1, x: 1, y: 1)
                    .shadow(color: Color("ColorBottom").opacity(0.1), radius: 1, x: -1, y: -1)
                    .blur(radius: 1)
                
            }
            
            HStack {
                
                Rectangle()
                    .fill(Color("ColorBottom"))
                    .frame(width: 15, height: 1 )
                
                Spacer().frame(width: 61)
                
                Rectangle()
                    .fill(Color("ColorBottom"))
                    .frame(width: 15, height: 1 )
            }
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
