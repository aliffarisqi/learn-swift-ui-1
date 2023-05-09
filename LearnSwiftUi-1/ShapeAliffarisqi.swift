//
//  ShapeAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 17/03/23.
//

import SwiftUI

struct ShapeAliffarisqi: View {
    var body: some View {
        VStack{
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.pink)
//                .stroke(Color.red)
//                .stroke(Color.blue, lineWidth: 30)
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [15]))
                .frame(width: 200)
            Circle()
                .trim(from: 0.2, to:1.0)
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [19]))
                .frame(width: 140)
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.orange)
            
                .frame(width: 300, height: 100)
            
            
        }
    }
}

struct ShapeAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ShapeAliffarisqi()
    }
}
