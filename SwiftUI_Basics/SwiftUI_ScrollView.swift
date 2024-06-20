//
//  SwiftUI_ScrollView.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 19/06/24.
//

import SwiftUI

struct SwiftUI_ScrollView: View {
    
    fileprivate func scrollViewWithRectange() -> some View {
        return ScrollView_WithRectange()
    }
    
    fileprivate func scrollView_WithModifiers() -> some View {
        return ScrollView_WithModifiers()
    }
    
    var body: some View {
        //scrollViewWithRectange()
        ScrollView_WithHRectange()
        //scrollView_WithModifiers()
    }
}

struct ScrollView_WithModifiers: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<10) { outerIndex in
                    VStack {
                        ForEach(0..<2) { index in
                            
                            ZStack {
                                Circle()
                                    .fill(.red)
                                    .cornerRadius(10)
                                    .padding(2)
                                    .frame(maxWidth: UIScreen.main.bounds.size.height/2, maxHeight: 200, alignment: .leading)
                                    .shadow(radius: 10)
                                VStack {
                                    Image(systemName: "doc.text.below.ecg.fill").font(.system(size: 60))
                                    Text("Orders").font(.system(size: 20)).underline().padding(.vertical, 1)
                                }
                                
                            }
                            
                        }.background(.green)
                    }
                }
            }
            })
        }
            
    }
//}

struct ScrollView_WithHRectange: View {
    var body: some View {
        ScrollView () {
//            LazyVStack {
                ForEach(0..<10) {_ in
                    ScrollView(.horizontal, content: {
                        HStack {
                            // /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(.white)
                                    .cornerRadius(15)
                                    .frame(width: 200, height: 200).padding()
                                    .shadow(radius: 10)
                                    
                            }
                            
                        }
                    })
                    
                }
                
//            }
        }
    }
}

struct ScrollView_With_LazyHStack_LazyVStack_Rectange: View {
    var body: some View {
        ScrollView () {
            LazyVStack {
                ForEach(0..<10) {_ in
                    ScrollView(.horizontal, content: {
                        LazyHStack {
                            // /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(.white)
                                    .cornerRadius(15)
                                    .frame(width: 200, height: 200).padding()
                                    .shadow(radius: 10)
                                    
                            }
                            
                        }
                    })
                    
                }
                
            }
        }
    }
}
struct ScrollView_WithRectange: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100) {_ in
                Rectangle()
                    .fill(.white)
                    .frame(width: .infinity, height: 200).padding()
                    .shadow(radius: 10)
            }
            
        }
    }
}

#Preview {
    SwiftUI_ScrollView()
}
