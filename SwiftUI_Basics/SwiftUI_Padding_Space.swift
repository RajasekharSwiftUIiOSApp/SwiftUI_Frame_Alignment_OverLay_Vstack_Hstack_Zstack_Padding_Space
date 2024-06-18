//
//  SwiftUI_Padding_Space.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 18/06/24.
//

import SwiftUI

struct SwiftUI_Padding_Space: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.all)
            .background(.purple)
            .frame(width: 400, height: 100, alignment: .center)
            .background(.green)
            
    }
}

#Preview {
    SwiftUI_Padding_Space()
}
