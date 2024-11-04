//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ivan Jovanovik on 4.11.24.
//

import SwiftUI


struct GradientButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                
                configuration.isPressed ?
                
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(.capsule(style: .continuous))
    }
}

