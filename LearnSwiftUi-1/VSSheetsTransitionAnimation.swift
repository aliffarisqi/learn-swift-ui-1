//
//  VSSheetsTransitionAnimation.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct VSSheetsTransitionAnimation: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack{
                Button("BUTTON"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            //METHOD 2 - TRANSITION
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 50)
//                        .transition(
//                            .move(edge: .bottom))
//                            .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            //METHOD 3 - ANIMATION
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 50)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.default)
            
        }
    }
}

struct NewScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct VSSheetsTransitionAnimation_Previews: PreviewProvider {
    static var previews: some View {
        VSSheetsTransitionAnimation()
//        NewScreen()
    }
}
