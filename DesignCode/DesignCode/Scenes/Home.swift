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
    
//    var sidebarOffsetFactor: CGFloat { isShowingSidebar ? 0 : 1 }
    
    var body: some View {
        ZStack {
            Button(action: {
                self.isShowingSidebar.toggle()
            }) {
                Text("Open Menu")
            }
            
            SettingsSidebar(isShowing: $isShowingSidebar)
                .padding(.trailing, 60)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(MenuStore())
    }
}
