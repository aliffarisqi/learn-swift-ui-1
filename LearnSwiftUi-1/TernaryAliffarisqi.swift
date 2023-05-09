//
//  TernaryAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct TernaryAliffarisqi: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 100)
        }
    }
}

struct TernaryAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        TernaryAliffarisqi()
    }
}
