//
//  MenuRow.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/22/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    var imageName: String = "person.circle"
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            
            Text(title)
                .font(.headline)
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(title: "Menu Row")
    }
}
