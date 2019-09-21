//
//  ContentView.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/21/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let topCardPadding: CGFloat = 72.0
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("Background")

            VStack {
                Text("UI Design")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("accent"))
                Text("Certificate")
                    .foregroundColor(Color.white)
            }
            .padding(.top, -topCardPadding + 12)
        }
        .padding(.top, topCardPadding)
        .background(Color.black)
        .cornerRadius(18)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
