//
//  SwiftUI_Vstack_Hstack_Zstack.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 18/06/24.
//

import SwiftUI

struct SwiftUI_Vstack_Hstack_Zstack: View {
    var body: some View {
        Text("ggggg")
        ScrollView {
            //Text("ggggg")
            ZStack {
                Circle().fill(.mint).frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 150.0)
                Rectangle().fill(.link).frame(width: 200.0, height: 100.0)
                Capsule().fill(.cyan).frame(width: 200.0, height: 50.0)
                Capsule(style: .continuous).fill(.indigo).frame(width: 100.0, height: 10.0)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: 400.0, height: 400.0).background(Color.orange)
            ZStack {
                Capsule(style: .continuous).fill(.indigo).frame(width: 400, height: 200)
                Text("Placeholder").foregroundColor(.white)
            }.frame(width: 400.0, height: 400.0)
                .background(Color.green)
            
            VStack (alignment: .leading, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .frame(width: 400.0, height: 400.0).padding(.all).background(Color.orange)
            
            HStack (alignment: .top, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .padding(.all).frame(width: 400.0, height: 400.0).background(Color.orange)
            
            
            
         
            
            VStack (alignment: .leading, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .padding(.all).background(Color.orange)
            VStack (alignment: .leading, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .padding(.all).background(Color.orange)
            VStack (alignment: .leading, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .padding(.all).background(Color.orange)
            VStack (alignment: .leading, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .padding(.all).background(Color.orange)
            VStack (alignment: .leading, spacing: 10.0) {
                Circle().fill(.mint)
                Rectangle().fill(.link)
                Capsule().fill(.cyan)
                Capsule(style: .continuous).fill(.indigo)
            }
            .padding(.all).background(Color.orange).frame(width: 400.0, height: 400.0)
            
            
            
            //        .background(alignment: .bottom) {
            //            Color.yellow
            ////            .overlay(alignment: .center)
            ////            {
            ////                Rectangle().fill(.shado).frame(width: 200, height: 200, alignment: .center)
            ////            }
            //
            //        }
        }
    }
}

#Preview {
    SwiftUI_Vstack_Hstack_Zstack()
}
