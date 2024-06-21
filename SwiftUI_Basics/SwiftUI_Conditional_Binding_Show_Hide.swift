//
//  SwiftUI_Conditional_Binding_Show_Hide.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 21/06/24.
//

import SwiftUI

struct SwiftUI_Conditional_Binding_Show_Hide: View {
    
    @State var isLoding: Bool
    @State var circle: Bool
    @State var rectangele: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      
        Button {
            isLoding.toggle()
        } label: {
            Text("Loding: \(isLoding.description)").bold().font(.title).padding().background(.yellow).foregroundColor(.black)
        }
        
        if isLoding {
            ProgressView()
        } else {
            
        }
        
        Spacer()
        
        Button {
            circle.toggle()
        } label: {
            Text("Circle: \(circle.description)").bold().font(.title).padding().background(.yellow).foregroundColor(.black)
        }
        
        if circle {
            Circle().fill(.blue).frame(width: circle ? 100 : 50, height: 50)
            Circle().fill(.blue).frame(width: circle ? 100 : 50, height: 100)
        } else {
            Circle().fill(.blue).frame(width: circle ? 100 : 50, height: 50)
//            Circle().fill(.blue).frame(width: circle ? 100 : 50, height: 100)
        }
        
        Spacer()
        
        Button {
            rectangele.toggle()
        } label: {
            Text("Rectangele: \(rectangele.description)").bold().font(.title).padding().background(.yellow).foregroundColor(.black)
        }
        
        if rectangele {
            Rectangle().fill(.blue).frame(width: circle ? 100 : 50, height: 50)
            Rectangle().fill(.blue).frame(width: circle ? 100 : 50, height: 100)
        } else {
            Rectangle().fill(.blue).frame(width: circle ? 100 : 50, height: 50)
//            Circle().fill(.blue).frame(width: circle ? 100 : 50, height: 100)
        }
        
        Spacer()

    }
}

#Preview {
    SwiftUI_Conditional_Binding_Show_Hide(isLoding: false, circle: false, rectangele: false)
}
