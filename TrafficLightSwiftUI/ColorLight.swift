//
//  ColorLight.swift
//  TrafficLightSwiftUI
//
//  Created by Алексей Парфенов on 20.01.2022.
//

import SwiftUI

struct ColorLight: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red)
    }
}
