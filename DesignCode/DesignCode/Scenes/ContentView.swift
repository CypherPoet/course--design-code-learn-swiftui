//
//  ContentView.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/21/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    static let cardSize = CGSize(width: 340, height: 220)
    
    @State private var isCardTwisted = false
    
    var cardTwistFactor: Double { isCardTwisted ? 1 : 0 }
    
    var body: some View {
        
        ZStack {
            HeaderView()
                .blur(radius: 6 * CGFloat(cardTwistFactor))
                .animation(.easeOut)
            
            CardView()
                .background(isCardTwisted ? Color("background9") : Color("background5"))
                .cornerRadius(18)
                .shadow(radius: 10)
                .offset(x: 0, y: -40 - (400 * CGFloat(cardTwistFactor)))
                .scaleEffect(0.85)
                .rotationEffect(.radians(.pi / 6) * cardTwistFactor)
                .rotation3DEffect(.radians(.pi / 3) * cardTwistFactor, axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
                .animation(.interpolatingSpring(mass: 0.76, stiffness: 67, damping: 23, initialVelocity: 16))
            CardView()
                .background(isCardTwisted ? Color("background9") : Color("background6"))
                .cornerRadius(18)
                .shadow(radius: 10)
                .offset(x: 0, y: -20 - (200 * CGFloat(cardTwistFactor)))
                .scaleEffect(0.9)
                .rotationEffect(.radians(.pi / 12) * cardTwistFactor)
                .rotation3DEffect(.radians(.pi / 4.5) * cardTwistFactor, axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
                .animation(.interpolatingSpring(mass: 0.76, stiffness: 67, damping: 23, initialVelocity: 18))
            CertificateView()
                .scaleEffect(0.95)
                .rotationEffect(.radians(.pi / 24) * cardTwistFactor)
                .rotation3DEffect(.radians(.pi / 6) * cardTwistFactor, axis: (x: 10, y: 10, z: 10))
                .animation(.interpolatingSpring(mass: 0.76, stiffness: 67, damping: 23, initialVelocity: 20))
                .onTapGesture {
                    self.isCardTwisted.toggle()
                }
            
            BottomModal()
                .blur(radius: 6 * CGFloat(cardTwistFactor))
                .animation(.easeOut)

        }
    }
}


struct CardView: View {
    var body: some View {
        VStack {
            Text("Card Back")
        }
        .frame(width: ContentView.cardSize.width, height: ContentView.cardSize.height)
    }
}

struct CertificateView: View {
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
        .frame(width: ContentView.cardSize.width, height: ContentView.cardSize.height)
        .background(Color.black)
        .cornerRadius(18)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
            }
            
            Image("Illustration5")
            
            Spacer()
        }
        .padding()
    }
}

struct BottomModal: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3)
                .opacity(0.12)
            
            Text("This certificate means you're awesome 🙌!")
                .lineLimit(10)
            
            Spacer()
        }
        .frame(minWidth: 100, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
        .offset(x: 0, y: 600)
    }
}
