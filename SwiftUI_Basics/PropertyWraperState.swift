//
//  PropertyWraperState.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 20/06/24.
//

import SwiftUI

struct PropertyWraperState: View {
   @State var background: Color
   @State var titleText: String
   @State var count: Int
    
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            VStack {
                Text("\(titleText)").font(.title)
                Text("Count: \(count)").underline().font(.title).padding()
                
                HStack (spacing:28){
                    
                    
                    Button(action: {
                        background = .brown
                        titleText = "I am Brown"
                        count += 1
                    }, label: {
                        Text("Increment ").padding().background(.blue).font(.title).foregroundColor(.white).underline()
                    })
                    
                    Button(action: {
                        background = .black
                        titleText = "I am Orange"
                        count -= 1
                    }, label: {
                        Text("Decrements").padding().background(.blue).font(.title).foregroundColor(.white).underline()
                    })
                }
            }.background(background).ignoresSafeArea().foregroundColor(.white)

        }
        
    }
}

#Preview {
    PropertyWraperState(background: .cyan, titleText: "Hey There", count: 0)
}
