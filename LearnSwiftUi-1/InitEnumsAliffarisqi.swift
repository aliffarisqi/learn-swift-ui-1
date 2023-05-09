//
//  InitEnumsAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct InitEnumsAliffarisqi: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
//        self.title = title
//        if title == "apples" {
//            self.backgroundColor = .red
//        }
//        else if title == "melon" {
//            self.backgroundColor = .green
//        }
//        else{
//            self.backgroundColor = .yellow
//        }
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "apples"
        }else{
            self.backgroundColor = .orange
            self.title = "orange"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitEnumsAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitEnumsAliffarisqi(count: 12, fruit: .orange)
            InitEnumsAliffarisqi(count: 27, fruit: .apple)
        }
//        InitEnumsAliffarisqi( count: 23, title: "melon")
    }
}
