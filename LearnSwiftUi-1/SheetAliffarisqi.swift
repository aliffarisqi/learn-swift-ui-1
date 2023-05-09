//
//  SheetAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct SheetAliffarisqi: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
                    .background(Color.blue.cornerRadius(10))
            })
            .sheet(isPresented: $showSheet, content: {
//                DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct SheetAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        SheetAliffarisqi()
//        SecondScreen()
    }
}
