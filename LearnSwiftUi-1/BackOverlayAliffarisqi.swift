//
//  BackOverlayAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct BackOverlayAliffarisqi: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.green, Color.orange]),
                        startPoint: .leading,
                        endPoint: .trailing)
                        )
                .padding()
            
            Text("hay bayu alif")
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .top, endPoint: .bottom)
                        )
                )
                .frame(width: 120, height: 150)
                .background(
                    Circle()
                        .fill(Color.orange)
                )
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("bayu")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                )
                .background(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 120, height: 120)
                )
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                    , alignment: .top
                )
                .background(
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 200, height: 100)
                    ,alignment: .trailing
                )
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.orange]),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.red.opacity(0.3), radius: 10, x : 0.0 , y:10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("4")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                )
                            , alignment: .bottomTrailing
                        )
                    
                )
        }
        
    }
}

struct BackOverlayAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        BackOverlayAliffarisqi()
    }
}
