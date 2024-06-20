//
//  SwiftUI_Button.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 20/06/24.
//

import SwiftUI

struct SwiftUI_Button: View {
    @State var title: String
    var body: some View {
        Text(title)
        Button(action: {
            title = "Normal Button Taped"
        }, label: {
            Text("Submit").padding().underline()
        }).accentColor(.green)
        
        Button(action: {
            title = "Background Button Taped"
        }, label: {
            Text("Background Button")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                .background(
                    Color.green
                        .cornerRadius(4)
                        .shadow(radius: 10)
                )
                .foregroundColor(.white)
        })
        
        Button(action: {
            title = "OverLay Button Taped"
        }, label: {
            Circle()
                .fill(Color.white)
                .frame(width: 80, height: 80)
                .shadow(radius: 10)
                .padding()
                .overlay {
                    Image(systemName: "figure.walk.circle.fill").font(.largeTitle).foregroundColor(.green)
                    //Text("1")
                }
        })
        
        Button(action: {
            title = "OverLay Button Taped"
        }, label: {
            Text("Background Button")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                .background(
                    Capsule().stroke(Color.green, lineWidth: 2.0)
                )
                .foregroundColor(.green)
        })
    }
}

#Preview {
    SwiftUI_Button(title: "HI Every One")
}
