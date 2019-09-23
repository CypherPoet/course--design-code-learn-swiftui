//
//  Home.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/22/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State private var isShowingSidebar = false
    
    var sidebarOffsetFactor: CGFloat { isShowingSidebar ? 0 : 1 }
    
    var body: some View {
        ZStack {
            Button(action: {
                self.isShowingSidebar.toggle()
            }) {
                Text("Open Menu")
            }
            
            
            SettingsSidebar()
                .animation(.easeOut)
                .rotation3DEffect(
                    .radians((.pi / 3) * Double(sidebarOffsetFactor)),
                    axis: (x: 0, y: 1, z: 0)
                )
                .offset(x: -UIScreen.main.bounds.width * sidebarOffsetFactor)
                .onTapGesture {
                    self.isShowingSidebar.toggle()
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(MenuStore())
    }
}
