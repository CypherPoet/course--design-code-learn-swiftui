//
//  SettingsMenu.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/22/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct SettingsMenu: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            MenuRow(imageName: "person.circle", title: "My Account")
            MenuRow(imageName: "bitcoinsign.circle", title: "Billing")
            MenuRow(imageName: "person.3", title: "Team")
            MenuRow(imageName: "arrow.uturn.down", title: "Sign Out")
            
            Spacer()
        }
    }
}


struct SettingsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SettingsMenu()
    }
}


