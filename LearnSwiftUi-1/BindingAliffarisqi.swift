//
//  BindingAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct BindingAliffarisqi: View {
    
    @State var backgroundColor: Color = Color.cyan
    @State var title: String = "My Title"
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title).font(.largeTitle)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View{
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.pink
    @Binding var title: String
    
    var body: some View{
        Button(action: {
            backgroundColor = Color.gray
            buttonColor = Color.blue
            title = "New Title"
        }, label: {
            Text("Button")
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct BindingAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        BindingAliffarisqi()
    }
}
