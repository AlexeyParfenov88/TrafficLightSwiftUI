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
    
    @State private var redLightCondition = 0.3
    @State private var yellowLightCondition = 0.3
    @State private var greenLightCondition = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
            
        case .red:
            currentLight = .yellow
            greenLightCondition = lightIsOff
            redLightCondition = lightIsOn
        case .yellow:
            currentLight = .green
            redLightCondition = lightIsOff
            yellowLightCondition = lightIsOn
        case .green:
            currentLight = .red
            greenLightCondition = lightIsOn
            yellowLightCondition = lightIsOff
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                SignalColor(color: .red, opacity: redLightCondition)
                SignalColor(color: .yellow, opacity: yellowLightCondition)
                SignalColor(color: .green, opacity: greenLightCondition)
                
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
