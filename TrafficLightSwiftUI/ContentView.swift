//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Алексей Парфенов on 20.01.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redLightBrightness = 0.5
    @State private var yellowLightBrightness = 0.5
    @State private var greenLightBrightness = 0.5
    
    @State private var currentLight = CurrentLight.red

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                SignalColor(color: .red, brightness: redLightBrightness)
                SignalColor(color: .yellow, brightness: yellowLightBrightness)
                SignalColor(color: .green, brightness: greenLightBrightness)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
