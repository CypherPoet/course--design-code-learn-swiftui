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
            NavigationView {
                ZStack(alignment: .topLeading) {
                    
                    CoursesListView()
                        .blur(radius: isShowingSidebar ? 20 : 0)
                        .scaleEffect(isShowingProfile ? 0.95 : 1)
                        .animation(.default)
                    
                    CertificatesView()
                        .cornerRadius(30)
                        .shadow(radius: 20)
                        .animation(.interpolatingSpring(mass: 0.9, stiffness: 102, damping: 30, initialVelocity: 14))
                        .offset(y: isShowingProfile ? 0 : UIScreen.main.bounds.height)
                    
                }
                .navigationBarItems(
                    leading: Button(action: {
                        self.isShowingSidebar.toggle()
                    }) {
                        Image(systemName: "list.dash")
                            .imageScale(.large)
                    }
                    .padding()
                )
            }
            
            HeaderButtonsView(
                isShowingSidebar: $isShowingSidebar,
                isShowingProfile: $isShowingProfile
            )
                .animation(.interpolatingSpring(mass: 1, stiffness: 111, damping: 36, initialVelocity: 15))
                .offset(y: isShowingProfile ? 0 : 42)
            
            
            SettingsSidebar(isShowing: $isShowingSidebar)
                .padding(.trailing, 60)
                .edgesIgnoringSafeArea(.vertical)
        }
    }
}


private struct HeaderButtonsView: View {
    @Binding var isShowingSidebar: Bool
    @Binding var isShowingProfile: Bool
    
    
    var body: some View {
        HStack {
            //            Button(action: {
            //                self.isShowingSidebar.toggle()
            //            }) {
            //                Image(systemName: "list.dash")
            //            }
            //            .padding(.leading, 30)
            //            .frame(width: 92, height: 68)
            //            .background(Color.white)
            //            .cornerRadius(.infinity)
            //            .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
            //            .accessibility(label: Text("Open the settings menu."))
            //            .offset(x: -92 * 0.45, y: 0)
            //
            Spacer()
            
            Button(action: {
            }) {
                Image(systemName: "bell")
            }
            .buttonStyle(FloatingCircleButtonStyle())
            .accessibility(label: Text("Open the settings menu."))
            
            Button(action: {
                self.isShowingProfile.toggle()
            }) {
                Image(systemName: "gear")
            }
            .buttonStyle(FloatingCircleButtonStyle())
            .accessibility(label: Text("Open account settings."))
            
        }
        .imageScale(.large)
        .foregroundColor(.black)
    }
}





struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(MenuStore())
            .environmentObject(CoursesStore())
    }
}
