//
//  AnimationAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct AnimationAliffarisqi: View {
    @State var isAnimated: Bool = false 
    var body: some View {
        VStack{
            Button("Button"){
                withAnimation( 
                    Animation
                        .default
//                        .repeatCount(5) 
                        .repeatForever(autoreverses: true)
                    
                ){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        AnimationAliffarisqi()
    }
}
