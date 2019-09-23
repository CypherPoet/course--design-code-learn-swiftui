//
//  SettingsSidebar.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/22/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct SettingsSidebar: View {
    
    var body: some View {
        SettingsMenu()
            .padding(.top, 20)
            .padding(30)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(radius: 20)
    }
}

struct SettingsSidebar_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSidebar().environmentObject(MenuStore())
    }
}
