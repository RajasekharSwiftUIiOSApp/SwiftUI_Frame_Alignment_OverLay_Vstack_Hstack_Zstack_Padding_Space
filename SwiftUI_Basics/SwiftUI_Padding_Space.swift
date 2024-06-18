//
//  SwiftUI_Padding_Space.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 18/06/24.
//

import SwiftUI

struct SwiftUI_Padding_Space: View {
    
    var body: some View {
        //basicPading()
        VStack (alignment: .trailing, spacing: 0) {
            Text("Hello World!").padding(.vertical, 20)
            
            Text("I am AI I was interduced by Humans but I am more talent then Humans I can ask, answer, teach, lision, view, anilese, preduct, propabulity, statictis")//.padding()
        }
        .padding()
        //.padding(.horizontal, 40)
//        .frame(maxWidth: .infinity , alignment: .leading)
//        .padding()
        //.padding(.horizontal, 40)
        .background {
            //cornerRadius(20)
            Color.white.cornerRadius(20)
                .shadow(color: .gray, radius: 10, x: 10, y: 10)
            
        }//.cornerRadius(20)
    }
    
    fileprivate func basicPading() -> some View {
        return BasicPading()
    }
}

struct BasicPading: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
        //.padding()
            .padding(.top, 10)
        //.padding(.all, 10)
        //.frame(width: 300, height: 100, alignment: .center)
            .background(.purple)
            .frame(width: 300, height: 100, alignment: .top)
            .padding(.vertical, 15)
            .background(.green)
    }
}

#Preview {
    SwiftUI_Padding_Space()
}
