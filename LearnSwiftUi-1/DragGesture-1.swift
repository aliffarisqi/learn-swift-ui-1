//
//  DragGesture-1.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 21/03/23.
//

import SwiftUI

struct DragGesture_1: View {
    @State private var dragOffset: CGSize = .zero
    @State private var position: CGSize = .zero
    
    var body: some View {
        Circle()
            .fill(Color.red)
            .shadow(radius: 20)
            .frame(width: 100)
            .offset(x: dragOffset.width + position.width, y: dragOffset.height + position.height)
            .gesture(DragGesture()
                .onChanged({ (value) in
                    self.dragOffset = value.translation
                })
                    .onEnded({(value) in
                        self.position.width += value.translation.width
                        self.position.height += value.translation.height
                        self.dragOffset = .zero
                    })
            )
    }
}

struct DragGesture_1_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_1()
    }
}
