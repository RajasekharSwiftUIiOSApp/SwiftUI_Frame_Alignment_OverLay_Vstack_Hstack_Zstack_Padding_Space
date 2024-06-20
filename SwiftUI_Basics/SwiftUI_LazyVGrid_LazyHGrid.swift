//
//  SwiftUI_LazyVGrid_LazyHGrid.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 20/06/24.
//

import SwiftUI

struct SwiftUI_LazyVGrid_LazyHGrid: View {
    
//    GeometryReader { geometry in
//        let screenSize = geometry.size
//    }
    
    let columnsFixed: [GridItem] = [
        GridItem(.fixed(UIScreen.main.bounds.width/2), spacing: nil, alignment: nil),
        GridItem(.fixed(UIScreen.main.bounds.width/2), spacing: nil, alignment: nil),
        //GridItem(.fixed(100), spacing: nil, alignment: nil),
       
    
    ]
    let columnsFlexible: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            ZStack {
                Rectangle().fill(.green).frame(maxWidth: .infinity, minHeight: 500)
                Image(systemName: "airplane.departure").foregroundColor(.white).font(.system(size: 300))
            }
            
            LazyVGrid(columns: columnsFlexible, content: {
                Section {
                    ForEach(0..<20) { index in
                        
                        ZStack {
                            Rectangle().fill(.gray).frame(height: 300).padding(4)
                            VStack {
                                Image(systemName: "airplane").font(.system(size: 30)).scaledToFill()//.padding()
                                Text("Rectangle: \(index)")
                            }
                            
                        }
                    }
                } header: {
                    Text("Header 1").bold().font(.largeTitle).frame(maxWidth: .infinity).background(.orange).foregroundColor(.white).padding()
                } footer: {
                    Text("Footer 1").bold().font(.largeTitle).frame(maxWidth: .infinity).background(.orange).padding(.horizontal, 10).foregroundColor(.white)
                }

                
         
            })
            
            LazyVGrid(columns: columnsFixed, content: {
                Section {
                    ForEach(0..<20) { index in
                        
                        ZStack {
                            Rectangle().fill(.gray).frame(height: 300).padding(4)
                            VStack {
                                Image(systemName: "airplane").font(.system(size: 30)).scaledToFill()//.padding()
                                Text("Rectangle: \(index)")
                            }
                            
                        }
                    }
                } header: {
                    Text("Header 2").bold().font(.largeTitle).frame(maxWidth: .infinity).background(.green).padding(.horizontal, 10).foregroundColor(.white)
                } footer: {
                    Text("Footer 2").bold().font(.largeTitle).frame(maxWidth: .infinity).background(.green).padding(.horizontal, 10).foregroundColor(.white)
                }

                
         
            })

        }
    }
   
}

#Preview {
    SwiftUI_LazyVGrid_LazyHGrid()
}
