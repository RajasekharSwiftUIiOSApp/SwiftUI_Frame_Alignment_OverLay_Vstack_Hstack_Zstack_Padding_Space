//
//  SwiftUI_ForEach.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 18/06/24.
//

import SwiftUI

struct SwiftUI_ForEach: View {
    let data = ["Hi", "Hello", "Hey Every One"]
    var body: some View {
        Text("Rama")
        
        //VStack_ForEach_View()
        
        VStack(alignment: .leading, spacing: 20) {
            ForEach(data.indices, id: \.self) { name in
                Text ("\(data[name]) : \(name)".capitalized).font(Font(CTFont(.toolbar , size: 30))).underline()
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    .background(.yellow)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Circle().fill(.orange).background(.green).shadow(color: .white, radius: 10, x: 10, y: 10).frame(width: 40, height: 40, alignment: .leading)
            }
        }.background(.gray)
    }
}

#Preview {
    SwiftUI_ForEach()
}

#Preview {
    SwiftUI_ForEach()
}

struct VStack_ForEach_View: View {
    var body: some View {
        VStack {
            ForEach((0..<10)) { index in
                Text("Hello, World!: \(index)")
                    .bold()
                    .font(.largeTitle)
                    .padding(10)
                    .background(.green)
                //.padding(10)
                
                
            }
            
        }
    }
}
