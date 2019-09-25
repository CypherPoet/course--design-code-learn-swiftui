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
    @State private var isShowingProfile = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {

            CertificatesView()
                .cornerRadius(30)
                .shadow(radius: 20)
                .animation(.interpolatingSpring(mass: 0.9, stiffness: 102, damping: 30, initialVelocity: 14))
                .offset(y: isShowingProfile ? 80 : UIScreen.main.bounds.height)
            
            HeaderButtonsView(
                isShowingSidebar: $isShowingSidebar,
                isShowingProfile: $isShowingProfile
            )
                .animation(.interpolatingSpring(mass: 1, stiffness: 111, damping: 36, initialVelocity: 15))
                .offset(y: isShowingProfile ? 0 : 40)
            
            SettingsSidebar(isShowing: $isShowingSidebar)
                .padding(.trailing, 60)
                .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}


private struct HeaderButtonsView: View {
    @Binding var isShowingSidebar: Bool
    @Binding var isShowingProfile: Bool
    
    
    var body: some View {
        HStack {
            Button(action: {
                self.isShowingSidebar.toggle()
            }) {
                Image(systemName: "list.dash")
            }
            .padding(.leading, 30)
            .frame(width: 92, height: 68)
            .background(Color.white)
            .cornerRadius(.infinity)
            .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
            .accessibility(label: Text("Open the settings menu."))
            
            Spacer()
            
            Button(action: {
                self.isShowingProfile.toggle()
            }) {
                Image(systemName: "person.circle")
            }
            .buttonStyle(FloatingCircleButtonStyle())
            .accessibility(label: Text("Open account settings."))
            
            Button(action: {
            }) {
                Image(systemName: "bell")
            }
            .buttonStyle(FloatingCircleButtonStyle())
            .accessibility(label: Text("Open the settings menu."))
        }
        .imageScale(.large)
        .foregroundColor(.black)
    }
}





struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(MenuStore())
    }
}
