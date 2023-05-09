//
//  FrameAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct FrameAliffarisqi: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .frame(width: 200, height: 100, alignment: .leading)
                .background(Color.red)
            Text("Hello, bayu")
                .background(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .background(Color.red)
        }
        
    }
}

struct FrameAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        FrameAliffarisqi()
    }
}
