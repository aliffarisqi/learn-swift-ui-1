//
//  SafeAreaAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct SafeAreaAliffarisqi: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Title Goes Here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<10) { index in
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(10)
                        .frame(height: 150)
                        .padding(10)
                        .shadow(radius: 10)
                }
            }
        }
        .background(.orange)
    }
}

struct SafeAreaAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaAliffarisqi()
    }
}
