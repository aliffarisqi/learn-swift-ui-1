//
//  AnimationTimingAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct AnimationTimingAliffarisqi: View {
    @State var isAnimated: Bool = false
    let timing: Double = 0.3
    var body: some View {
        
        ZStack {
            VStack{
                Button("Button"){
                        isAnimated.toggle()
                }
                Spacer()
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.red : Color.orange)
                    .frame(
                        width: isAnimated ? 350 : 50,
                        height: 100)
                    .animation(Animation
                        .spring(
                            response: 2.0,
                            dampingFraction: 0.7,
                            blendDuration: 1.0
                        ),
                               value: isAnimated)
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.red : Color.green)
                    .frame(
                        width: isAnimated ? 350 : 50,
                        height: 100)
                    .animation(Animation.easeIn(duration: timing), value: isAnimated)
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.red : Color.green)
                    .frame(
                        width: isAnimated ? 350 : 50,
                        height: 100)
                    .animation(Animation.easeOut(duration: timing), value: isAnimated)
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.red : Color.green)
                    .frame(
                        width: isAnimated ? 350 : 50,
                        height: 100)
                    .animation(Animation.easeInOut(duration: timing), value: isAnimated)

                Spacer()
            }
            
        }
    }
}

struct AnimationTimingAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingAliffarisqi()
    }
}
