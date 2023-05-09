//
//  ButtonAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct ButtonAliffarisqi: View {
    @State var title = "this is my title"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            
            Button("press me"){
                self.title = "Button was pressed"
            }
            Button(action: {
                self.title = "Button #2 Was Pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(
                                color: Color.black.opacity(0.2), radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "button #3"
            }, label:{
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )
            })
            Button(action: {
                self.title = "Finis"
            }, label:{
                Text("Finis".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

struct ButtonAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAliffarisqi()
    }
}
