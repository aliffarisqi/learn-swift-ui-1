//
//  Draggesture-2.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 21/03/23.
//

import SwiftUI

struct Draggesture_2: View {
    @State var offset = CGSize.zero
    @State var lastDragPosition: DragGesture.Value?
    @State var ShadowColor = Color.gray
    
    var body: some View {
        Circle()
            .fill(Color.red)
            .offset(offset)
            .shadow(color: ShadowColor, radius: 20)
            .frame(width: 100)
            .gesture(DragGesture(minimumDistance: 1)
                .onChanged({ value in
                    self.offset = value.translation
                    self.lastDragPosition = value
                })
                    .onEnded({value in
                        withAnimation(.spring(response: 2.0,
                                              dampingFraction: 0.7,
                                              blendDuration: 1.0)) {
                            self.offset = CGSize.zero
                        }
                    })
            )
//            .animation(.spring())
        
    }
}

struct Draggesture_2_Previews: PreviewProvider {
    static var previews: some View {
        Draggesture_2()
    }
}
