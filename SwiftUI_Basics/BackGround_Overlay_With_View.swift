//
//  BackGround_Overlay_With_View.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 16/06/24.
//

import SwiftUI

struct BackGround_Overlay_With_View: View {
    var body: some View {
        
        Text("Title")
            .font(.system(size: 24))
            .frame(width: 180, height: 180, alignment: .top)
            .background(.red)
            .overlay(alignment: .center) {
                Circle()
                    .fill(.orange)
                    .frame(width: 80, height: 80, alignment: .top)
                .background(Circle().fill(.brown).frame(width: 100, height: 100, alignment: .center))
                Text("orange")
            }
            .background(alignment: .center) {
                Circle().fill(.brown).frame(width: 220, height: 220, alignment: .leading)
            }
         
        //Spacer(minLength: 30)
        
    }
}

#Preview {
    BackGround_Overlay_With_View()
}




