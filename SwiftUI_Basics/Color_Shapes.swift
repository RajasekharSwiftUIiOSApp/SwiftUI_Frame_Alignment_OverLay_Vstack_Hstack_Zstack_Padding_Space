//
//  Color_Shapes.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 15/06/24.
//

import SwiftUI

struct Color_Shapes: View {
    var body: some View {

//        Text("Hello, World!")
//            .foregroundColor(.white)
//            .background(.yellow)
//            .frame(width: 150, height: 100, alignment: .bottomTrailing)
//            .background(.gray)
//            .frame(width: 200,height: 200, alignment: .bottomTrailing)
//            .background(.purple)
//            .frame(width: 250, height: 300, alignment: .center)
//            .background(.green)
        
        Image(systemName: ("signature")).resizable()
           // .font(.system(size: 50))
            .frame(width: 100, height: 100)
            .foregroundColor(.pink)
            .frame(width: 150, height: 100, alignment: .bottomTrailing)
            .background(.yellow)
            .frame(width: 200,height: 200, alignment: .bottomTrailing)
            .background(.gray)
            .frame(width: 250, height: 300, alignment: .bottomTrailing)
            .background (
                Circle().fill(Color.pink)
            )
            .padding(5)
            .frame(width: 300, height: 400, alignment: .bottomTrailing)
            .background(.green)
      
    
            
    }
}

#Preview {
    Color_Shapes()
}
