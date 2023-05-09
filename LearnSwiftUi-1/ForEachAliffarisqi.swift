//
//  ForEachAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct ForEachAliffarisqi: View {
    
    let data: [String] = ["hallo","hallo say"]
    
    var body: some View {
        VStack {
//            ForEach(0..<10){ index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("hi: \(index)")
//                }
//
//            }
            ForEach(data.indices) { index in
                Text("NEW ITEM : \(index) : \(data[index])")
            }
        }
    }
}

struct ForEachAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ForEachAliffarisqi()
    }
}
