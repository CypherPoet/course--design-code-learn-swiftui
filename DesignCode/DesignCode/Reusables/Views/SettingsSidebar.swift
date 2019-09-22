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
            .frame(minWidth: 0, idealWidth: 320, maxWidth: .infinity)
            .padding(30)
            .background(Color.white)
            .cornerRadius(30)
            .padding(.trailing, 60)
            .edgesIgnoringSafeArea(.bottom)
            .shadow(radius: 20)
    }
}

struct SettingsSidebar_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSidebar()
    }
}
