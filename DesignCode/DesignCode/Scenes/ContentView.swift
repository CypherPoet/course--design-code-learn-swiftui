//
//  ContentView.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/21/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            VStack {
                Text("Card Back")
            }
            .frame(width: 300, height: 220.0)
            .background(Color.blue)
            .cornerRadius(18)
            .shadow(radius: 10)
            .offset(x: 0, y: -20)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("UI Design")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("accent"))
                            .padding(.top)
                        
                        Text("Certificate")
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Image("Background")
            }
            .frame(width: 340.0, height: 220.0)
            .background(Color.black)
            .cornerRadius(18)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
