//
//  SpacerAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct SpacerAliffarisqi: View {
    var body: some View {
        VStack {
            HStack(spacing: 50){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)

            }
            .background(Color.blue)
            HStack(spacing: nil){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Spacer()
                    .frame(height: 10)
//                    .background(Color.yellow)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)

            }
            .background(Color.cyan)
            HStack(spacing: nil){
                Spacer()
                    .frame(height: 10)
                    .background(Color.yellow)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)

            }
            .background(Color.blue)
            
            HStack(spacing: nil){
                Spacer(minLength: 100)
                    .frame(height: 10)
                    .background(Color.yellow)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                Spacer(minLength: 100)
                    .frame(height: 10)
                    .background(Color.yellow)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                Spacer()
                    .frame(height: 10)
                    .background(Color.yellow)

            }
            .padding(.horizontal, 200)
            .background(Color.orange)
            
            HStack{
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)

        }
    }
}

struct SpacerAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        SpacerAliffarisqi()
    }
}
