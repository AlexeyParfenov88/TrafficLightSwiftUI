//
//  SignalColor.swift
//  TrafficLightSwiftUI
//
//  Created by Алексей Парфенов on 20.01.2022.
//

import SwiftUI

struct SignalColor: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct SignalColor_Previews: PreviewProvider {
    static var previews: some View {
        SignalColor(color: .red, opacity: 0.1)
    }
}
