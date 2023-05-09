//
//  TransitionAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct TransitionAliffarisqi: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("BUTTON"){
//                    withAnimation(
//                        Animation
//                            .default
//                    ){
                        showView.toggle()
//                    }
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .animation(Animation.easeInOut)
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAliffarisqi()
    }
}
