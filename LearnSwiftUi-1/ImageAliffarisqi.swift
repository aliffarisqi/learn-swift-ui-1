//
//  ImageAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct ImageAliffarisqi: View {
    var body: some View {
        VStack{
            Image("photo-profile")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
//                .cornerRadius(50)
                .clipShape(Circle())
            Image("google")
            //untuk merubah warna foto
//                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
        }
    }
}

struct ImageAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ImageAliffarisqi()
    }
}
