//
//  SubViewsAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI

struct SubViewsAliffarisqi: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            contenLayer
            
        }
    }
    
    var contenLayer: some View{
        HStack{
            MyItem(title: "apples", count: 2, color: Color.red)
            MyItem(title: "bananas", count: 4, color: Color.yellow)
            MyItem(title: "melon", count: 5, color: Color.green)
        }
    }
    
}

struct SubViewsAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        SubViewsAliffarisqi()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
