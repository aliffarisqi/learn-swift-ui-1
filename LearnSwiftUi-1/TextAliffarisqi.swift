//
//  TextAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 17/03/23.
//

import SwiftUI

struct TextAliffarisqi: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.body)
                .fontWeight(.bold)
//            .bold()
//            .underline()
                .underline(true, color: Color.blue)
                .italic()
//            .strikethrough()
                .strikethrough(true, color: Color.red)
            Text("Hello, Bayu")
                .font(.system(size: 24, weight: .semibold, design: .serif))
            Text("hello bayu aliffarisqi, jangan kupa untuk selalu bersukur setiap hari ya, semoga hari harimu terus menyenangkan ya")
                .baselineOffset(10)
                .kerning(3)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
            Text("ini adalah latihan untuk mengikuti nano challenge satu pada academy".capitalized)
                .frame(width: 200, height: 100)
            Text("hay bayu".uppercased())
                .frame(width: 200, height: 100, alignment: .leading)
                .minimumScaleFactor(0.1)
            
        }
    }
}

struct TextAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        TextAliffarisqi()
    }
}
