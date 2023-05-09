//
//  ConditionalAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct ConditionalAliffarisqi: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack{
            Button("Circle button : \(showCircle.description)"){
                showCircle.toggle()
            }
            Button("Rectangle button : \(showRectangle.description)"){
                showRectangle.toggle()
            }
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            if showCircle && showRectangle{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 100)
            }
            Spacer()
            Button("Loading button : \(isLoading.description)"){
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            }
        }
    }
}

struct ConditionalAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalAliffarisqi()
    }
}
