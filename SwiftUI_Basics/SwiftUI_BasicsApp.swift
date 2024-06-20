//
//  SwiftUI_BasicsApp.swift
//  SwiftUI_Basics
//
//  Created by rajasekhar pidikiti on 15/06/24.
//

import SwiftUI

@main
struct SwiftUI_BasicsApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            //Color_Shapes()
            //BackGround_Overlay_With_View()
            //SwiftUI_Init_Enum()
            //SwiftUI_ScrollView()
            //SwiftUI_LazyVGrid_LazyHGrid()
            PropertyWraperState(background: .cyan, titleText: "Hey There I can change And Increment by Decreent", count: 0)
        }
    }
}
