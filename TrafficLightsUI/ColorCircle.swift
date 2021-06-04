//
//  ColorCircle.swift
//  TrafficLightsUI
//
//  Created by MacBook on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opocity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150, alignment: .center)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opocity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .green, opocity: 0.3)
    }
}
