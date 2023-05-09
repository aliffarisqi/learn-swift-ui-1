//
//  ColorAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 17/03/23.
//

import SwiftUI

struct ColorAliffarisqi: View {
    @State private var selectedColor = Color.red
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
                .frame(width: 250, height: 50)
            Rectangle()
                .fill(
                    Color(UIColor.secondarySystemBackground)
                )
                .frame(width: 250, height: 50)
                .border(Color.red, width: 2)
            
            ColorPicker("cek", selection: $selectedColor)
            Circle()
                .fill(
                    Color("CustomColor")
                )
                .frame(width: 100)
                .shadow(color: Color("CustomColor").opacity(0.6), radius: 10, x: 5, y: 5)
        }
    }
}

struct ColorAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ColorAliffarisqi()
    }
}
