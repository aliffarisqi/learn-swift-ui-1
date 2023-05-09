//
//  VHZstackAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct VHZstackAliffarisqi: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            ZStack{
                Circle()
                    .fill(Color.white)
                    .frame(width: 50, height: 50)
                Text("1")
                    .font(.headline)
            }
            Text("1")
                .font(.headline)
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 50, height: 50)
                )
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.red)
                .frame(width: 300, height: 140)
                Rectangle()
                    .fill(Color.blue)
                .frame(width: 100, height: 100)
                
            }
            HStack(spacing: 0) {
                Rectangle()
                    .fill(Color.orange)
                .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.red)
                .frame(width: 40, height: 40)
            }
            .background(Color.white)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            ZStack(alignment: .top, content: {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 80, height: 80)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 50, height: 50)
            })
        })
        .background(Color.black)
    }
}

struct VHZstackAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        VHZstackAliffarisqi()
    }
}
