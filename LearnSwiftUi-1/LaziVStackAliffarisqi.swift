//
//  LaziVStackAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 18/03/23.
//

import SwiftUI

struct LaziVStackAliffarisqi: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil)
        
          GridItem(.flexible(), spacing: 20, alignment: nil),
          GridItem(.flexible(), spacing: nil, alignment: nil),
          GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
       
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 300)
                LazyVGrid(columns: columns,
                      spacing: 20,
                          pinnedViews: [.sectionHeaders],
                      content:{ 
                        Section(header: Text("Section 12")){
                            ForEach(0..<50){ index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 50)
                            }
                        }
                        Section(header: Text("Section 2")){
                            ForEach(0..<50){ index in
                                Rectangle()
                                .fill(Color.blue)
                                .frame(height: 50)
                        }
                    }
            })
        }
        
    }
}

struct LaziVStackAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        LaziVStackAliffarisqi()
    }
}
