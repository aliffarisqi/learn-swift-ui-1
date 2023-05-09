//
//  GradientAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct GradientAliffarisqi: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(
//                    Color.red
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 300, height: 100)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.orange, Color.red]),
                        startPoint: .leading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 300, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.green]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 200)
                )
                .frame(width: 300, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.orange]),
                        center: .topLeading,
                        startRadius: 30,
                        endRadius: 100)
                )
                .frame(width: 100, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.red, Color.orange]),
                        center: .center,
                        angle: .degrees(45)
                        )
                )
                .frame(width: 200, height: 200)
            
        }
        
    }
}

struct GradientAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        GradientAliffarisqi()
    }
}
