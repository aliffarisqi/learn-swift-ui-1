//
//  FunctionViewAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct FunctionViewAliffarisqi: View {
    @State var backgroundColor = Color.pink
    var body: some View {
        ZStack{
            //Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Content
            contenLayer
        }
    }
    
    var contenLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .orange
    }
}

struct FunctionViewAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        FunctionViewAliffarisqi()
    }
}
