//
//  PaddingAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct PaddingAliffarisqi: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
    //            .padding()
    //            .padding(.all, 10)
                .padding(.vertical, 12)
            .background(Color.blue)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
    //            .padding()
    //            .padding(.all, 10)
                .padding(.leading, 12)
                .background(Color.blue)
            VStack(alignment:.leading){
                Text("hello, bayu")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("hallo ini adalah contoh dari penggunaan padding dan spacer pada swift ui ini adalah pertama kali saya untuk belajar membuat aplikasi dengan bahasa pemrograman swift")
            }
            .padding()
            .background(Color.red)
            .padding(.horizontal, 10)
            .background(Color.green)
            
            VStack(alignment:.leading){
                Text("hello, bayu")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 10)
                Text("hallo ini adalah contoh dari penggunaan padding dan spacer pada swift ui ini adalah pertama kali saya untuk belajar membuat aplikasi dengan bahasa pemrograman swift")
            }
            .padding()
            .padding(.vertical, 10)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(
                        color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 10
                    )
            )
            .padding(.horizontal, 10)
        }
    }
}

struct PaddingAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAliffarisqi()
    }
}
