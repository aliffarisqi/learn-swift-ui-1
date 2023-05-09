//
//  StateAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct StateAliffarisqi: View {
    
    @State var backgroundColor: Color = Color.purple
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Conten
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                
                HStack(spacing: 20){
                    Button("button 1"){
                        backgroundColor = .green
                        myTitle = "Button 1 was Pressed"
                        count += 1
                    }
                    Button("button 2"){
                        backgroundColor = .gray
                        myTitle = "button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        StateAliffarisqi()
    }
}
