//
//  TextEditorAlif.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 23/03/23.
//

import SwiftUI

struct TextEditorAlif: View {
    @State var TextFieldText: String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $TextFieldText)
                    .frame(height: 250)
                    .overlay(alignment: .topLeading, content: {
                        Text(TextFieldText.isEmpty ? "ketik pertanyaan ..." : "")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .offset(x:10, y:10)
                    })
            
                Button(action: {
                 
                }, label: {
                    Text("save")
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Spacer()
            }
            .padding()
            .background(Color.gray)
            .navigationTitle("Text Editor")
        }
        
    }
}

struct TextEditorAlif_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorAlif()
    }
}
