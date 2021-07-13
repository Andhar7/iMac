//
//  LeftPowerButton.swift
//  iMac
//
//  Created by Andrej Kling on 13.07.21.
//

import SwiftUI

struct LeftPowerButton: View {
    var body: some View {
        
//        ZStack {
//            Color("Color")
//
            Image(systemName: "power")
                .padding(4)
                .font(.system(size: 8, weight: .regular, design: .serif))
                .foregroundColor(.white).opacity(0.3)
                .shadow(color: Color("btn"), radius: 5, x: 0, y: 0)
                .background(Color("btn"))
                .clipShape(Circle())
                .shadow(color:Color("btn").opacity(0.1), radius: 1, x: -1, y: 1)
                .shadow(color: Color("btn").opacity(0.1), radius: 1, x: 1, y: -1)

    //    }
    }
}

struct LeftPowerButton_Previews: PreviewProvider {
    static var previews: some View {
        LeftPowerButton()
    }
}
