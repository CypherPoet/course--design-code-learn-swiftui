//
//  CertificateCard.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/22/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct CertificateCard: View {
    
    var body: some View {
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
        .background(Color.black)
        .cornerRadius(18)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
    
}

struct CertificateCard_Previews: PreviewProvider {
    static var previews: some View {
        CertificateCard()
    }
}
