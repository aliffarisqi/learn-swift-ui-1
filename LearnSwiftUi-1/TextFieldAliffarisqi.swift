//
//  TextFieldAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 23/03/23.
//

import SwiftUI

struct TextFieldAliffarisqi: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("text something", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(Color.black)
                    .font(.headline)
                Button(action: {
                    if textIsApproval(){
                        saveText()
                        
                    }
                }, label: {
                    Text("save")
                        .padding()
                        .background(textIsApproval() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                        .font(.headline)
                })
                .disabled(!textIsApproval())
                ForEach(dataArray, id: \.self){ data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Text Field")
        }
    }
    func textIsApproval() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldAliffarisqi()
    }
}
