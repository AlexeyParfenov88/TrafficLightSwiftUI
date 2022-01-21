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
    
    @State private var buttonName = "START"
    
    @State private var redLightBrightness = 0.3
    @State private var yellowLightBrightness = 0.3
    @State private var greenLightBrightness = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
            
        case .red:
            currentLight = .yellow
            greenLightBrightness = lightIsOff
            redLightBrightness = lightIsOn
        case .yellow:
            currentLight = .green
            redLightBrightness = lightIsOff
            yellowLightBrightness = lightIsOn
        case .green:
            currentLight = .red
            greenLightBrightness = lightIsOn
            yellowLightBrightness = lightIsOff
        }
    }

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                SignalColor(color: .red, opacity: redLightBrightness)
                SignalColor(color: .yellow, opacity: yellowLightBrightness)
                SignalColor(color: .green, opacity: greenLightBrightness)
                
                Spacer()
                
                ColorButton(title: buttonName) {
                    if buttonName == "START" {
                        buttonName = "NEXT"
                    }
                    changeColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
