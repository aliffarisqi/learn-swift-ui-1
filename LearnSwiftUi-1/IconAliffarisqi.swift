//
//  IconAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct IconAliffarisqi: View {
    var body: some View {
        VStack{
            Image(systemName: "heart")
            Image(systemName: "heart.fill")
                .font(.largeTitle)
            Image(systemName: "folder.fill")
                .font(.system(size: 100))
                .foregroundColor(.red)
            Image(systemName: "paperplane")
//                .font(.system(size: 100))
                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 200, height: 200)
                .clipped()
            Image(systemName: "person.fill.badge.plus")
                .renderingMode(.original)
                .font(.largeTitle)
                .foregroundColor(.yellow)
        }
    }
}

struct IconAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        IconAliffarisqi()
    }
}
