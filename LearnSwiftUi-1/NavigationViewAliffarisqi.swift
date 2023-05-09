//
//  NavigationViewAliffarisqi.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 19/03/23.
//

import SwiftUI
struct NavigationViewAliffarisqi: View {
    @State var rotationFlowerAngle1: Double = 0.0
    @State var rotationFlowerAngle2: Double = 0.0
    @State var flowerScale1:CGFloat = 1.0
    @State var isAnimateFlower1: Bool = false
    var body: some View {
        
        ZStack(alignment: .top){
            Image("Image")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.cyan.opacity(0.5))
                .frame(width: 200)
                .rotationEffect(.degrees(rotationFlowerAngle1), anchor: .center)
                .onAppear{
                    withAnimation(
                        .linear(duration: 1)
                        .speed(0.5)
                        .repeatForever(autoreverses: false)) {
                            rotationFlowerAngle1 = -360
                        }
                }
            NavigationView{
                ZStack(alignment: .top){
                    
                    ScrollView{
                        NavigationLink("Go To Page 2",
                                       destination: MySecondPage())
                        Text("Hello World")
                        Text("Hello World")
                        Text("Hello World")
                        Text("Hello World")
                        Text("Hello World")
                    }
                    .navigationTitle("All Inbox")
                    //            .navigationBarTitleDisplayMode(.automatic)
                    //            .navigationBarHidden(true)
                    .navigationBarItems(
                        leading:
                            NavigationLink(
                                destination: MyThirdPage(),
                                label: {
                                    Text("SKIP")
                                        .foregroundColor(Color.gray)
                                }
                            ),
                        trailing:
                            HStack{
                                Image(systemName: "speaker.wave.2.circle.fill")
                                    .foregroundColor(Color.green)
                                Image(systemName: "speaker.slash.circle.fill")
                                    .foregroundColor(Color.gray)
                            }
                    )
                    
                }
            }.blendMode(.darken)
            
        }
            
    }
}

struct MySecondPage: View {
    @State var rotationFlowerAngle1: Double = 0.0
    @State var rotationFlowerAngle2: Double = 0.0
    @State var flowerScale1:CGFloat = 1.0
    @State var isAnimateFlower1: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .top){
            Color.white
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Page 2")
          
            VStack(alignment: .leading){
                Text("Hello World Page 2")
                Text("Hello World Page 2")
                Text("Hello World Page 2")
                Text("Hello World Page 2")
                
                NavigationLink("Go To Page 3", destination: MyThirdPage())
                
            }
        }
    }
}
struct MyThirdPage: View {
    var body: some View{
        ZStack{
            Color.cyan
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Page 3")
        }
    }
}
struct NavigationViewAliffarisqi_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewAliffarisqi()
    }
}

