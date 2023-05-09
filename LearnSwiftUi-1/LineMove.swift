//
//  LineMove.swift
//  LearnSwiftUi-1
//
//  Created by Bayu Alif Farisqi on 21/03/23.
//

import SwiftUI
struct LineSegment2: Shape {
    var endPoint: CGPoint
    
    func path(in rect: CGRect) -> Path {
        let start = CGPoint(x: 0.0, y: 0.0)
        let end = CGPoint(x: endPoint.x * rect.width,
                          y: endPoint.y * rect.height)
        var path = Path()
        path.move(to: start)
        path.addLine(to: end)
        return path
    }
}
struct LineSegment3: Shape {
    var endPoint: CGPoint

    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { AnimatablePair(endPoint.x, endPoint.y) }
        set {
            endPoint.x = newValue.first
            endPoint.y = newValue.second
        }
    }

    func path(in rect: CGRect) -> Path {
        let start = CGPoint(x: 10.0, y: 10.0)
        let end = CGPoint(x: endPoint.x ,
                          y: endPoint.y )
        var path = Path()
        path.move(to: start)
        path.addLine(to: end)
        return path
    }
}

struct LineMove: View {
    @State private var changeLine = false
    var body: some View {
        VStack {
            Text("Line move not animated")
            
            LineSegment3(endPoint: CGPoint(
                x: changeLine ? 11.0 : 200,
                y: changeLine ? 11.0: 200))
            .stroke(changeLine ? Color(.red) : .purple, lineWidth: 4.0)
            .frame(width: 200, height: 150)
            .animation(.linear(duration: 3))

            
            Button("Change Line") {
                changeLine.toggle()
            }
            .buttonStyle(BlueButtonStyle())
            
            Spacer()
        }
    }
}


struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 24, weight:.bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(5)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color:.black, radius:3, x:3.0, y:3.0)
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct LineMove_Previews: PreviewProvider {
    static var previews: some View {
        LineMove()
    }
}
