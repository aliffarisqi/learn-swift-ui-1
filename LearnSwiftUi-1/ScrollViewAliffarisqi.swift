//
//  ScrollViewAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct ScrollViewAliffarisqi: View {
    var body: some View {
//        ScrollView{
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.orange)
//                        .cornerRadius(20)
//                        .frame(height: 300)
//                }
//            }
//        }
//        ScrollView(.horizontal, showsIndicators: false, content:{
//            HStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.orange)
//                        .cornerRadius(20)
//                        .frame(width: 200, height: 300)
//                }
//            }
//        })
        
        ScrollView{
            //LazVyStack untuk data yang banyak agar mereload hanya saat dibutuhkan
            VStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators: false,
                        content: {
                        HStack{
                            ForEach(0..<20){ index in
                                Rectangle()
                                    .fill(Color.orange)
                                    .cornerRadius(20)
                                    .frame(width: 300, height: 200)
                                    .padding()
                                
                            }
                        }
                    })
                }
            }
        }
            
        
        
    }
}

struct ScrollViewAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewAliffarisqi()
    }
}
