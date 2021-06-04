//
//  ContentView.swift
//  TrafficLightsUI
//
//  Created by MacBook on 01.06.2021.
//

import SwiftUI

enum ColorOfTrafficLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = ColorOfTrafficLight.red
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State var nameButton = "START"
    
    var body: some View {
       
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                ColorCircle(color: .red, opocity: redLight)
                ColorCircle(color: .yellow, opocity: yellowLight)
                ColorCircle(color: .green, opocity: greenLight)
                Spacer()
            
                ChangeColorButton(title: nameButton) {
                    if nameButton == "START" {
                        nameButton = "NEXT"
                    }
                    startButtonPressed()
                }
                    

                }
            }
        
        }
    
     private func startButtonPressed(){
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            greenLight = lightIsOn
            yellowLight = lightIsOff
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


