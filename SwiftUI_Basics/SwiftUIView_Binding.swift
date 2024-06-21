//
//  SwiftUIView_Binding.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 21/06/24.
//

import SwiftUI

struct SwiftUIView_Binding: View {
    @State var viewBG: Color
    @State var text: String
    
    init(viewBackground: Color, text: String) {
       // self.buttonBackground = .green
        self.viewBG = .red
        self.text = "Hey There!"
    }
    
    fileprivate func viewWithBindings() -> some View {
        return VStack {
            Text("\(text)").font(.largeTitle).bold().padding()
            ButtonView(viewBackground: $viewBG, text: $text)
        }
    }
    
    var body: some View {
        ZStack {
            
            viewBG.ignoresSafeArea()
            
            viewWithBindings()
           
        }
    }
}

#Preview {
    SwiftUIView_Binding(viewBackground: .gray, text: "Hey There!")
}

struct ButtonView: View {
    @State var buttonBackground: Color = .green
    @Binding var viewBackground: Color
    @Binding var text: String
    var body: some View {
        Button {
            buttonBackground = .blue
            viewBackground = .yellow
            text = "Hey There This is Raja"
        } label: {
            Text("Submit")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .background(buttonBackground)
                .cornerRadius(10)
                .foregroundColor(.white)
        }
    }
}
