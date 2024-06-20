//
//  SwiftUI_SafeArea.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 20/06/24.
//

import SwiftUI

struct SwiftUI_SafeArea: View {
    var body: some View {
        
        ScrollView {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }

        }
        //.background(Color.blue)
        .background(
            Color.red
                //.edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea()
        )
        
        
        
        
        
        
        
        
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }

    }
}

#Preview {
    SwiftUI_SafeArea()
}
