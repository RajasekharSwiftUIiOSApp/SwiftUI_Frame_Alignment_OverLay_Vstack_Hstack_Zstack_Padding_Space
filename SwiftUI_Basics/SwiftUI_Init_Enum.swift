//
//  SwiftUI_Init_Enum.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 18/06/24.
//

import SwiftUI

struct SwiftUI_Init_Enum: View {
    let value: Int //= 100
    let name: String //= "Apple"
    let backGroundColor: Color //= Color.orange
//    init(value: Int, name: String, backGroundColor: Color) {
//        self.value = value
//        self.name = name
//        self.backGroundColor = backGroundColor
//    }
    init(value: Int, fruit: Fruit) {
        self.value = value
        switch fruit {
            
        case .orange:
            self.name = "Orange"
            self.backGroundColor = .orange
            
        case .apple:
            self.name = "Apple"
            self.backGroundColor = .red
        }
//        self.name = name
//        self.backGroundColor = backGroundColor
    }
    
    enum Fruit {
        case orange
        case apple
    }
    var body: some View {
        VStack {
            Text("\(value)").font(.largeTitle)
                .bold()
                .underline()
                .foregroundColor(.white)
                .padding(4)
            Text("\(name)").foregroundColor(.white)
                .font(.headline)
            
        }.frame(width: 150, height: 150, alignment: .center)
            .background(backGroundColor.opacity(0.9))
            .cornerRadius(10.0)
    }
}

#Preview {
    HStack {
        SwiftUI_Init_Enum(value: 100, fruit: .orange)
        SwiftUI_Init_Enum(value: 100, fruit: .apple)
    }
    
   // SwiftUI_Init_Enum(value: 40, name: "Orange", backGroundColor: .orange)
}
