//
//  UpdatesListView.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/26/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI


struct UpdatesListView: View {
    @EnvironmentObject var updatesStore: UserUpdatesStore
    @State private var isShowingSettingsView = false
    
    var body: some View {
        List(updatesStore.updates.indexed(), id: \.1.id) { index, update in
            NavigationLink(destination: Text("Update \(index + 1)")) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(update.title)
                        .font(.headline)
                    //                        .fontWeight(.bold)
                    Text(update.bodyText)
                        .font(.subheadline)
                        .lineLimit(2)
//                        .frame(minHeight: 44, alignment: .topLeading)
                    Text(update.formattedDate)
                        .font(.caption)
                        .fontWeight(.bold)
                }
            }
        }
        .navigationBarTitle("Updates")
        .navigationBarItems(trailing:
            Button(action: {
                self.isShowingSettingsView.toggle()
            }) {
                Image(systemName: "gear")
                    .imageScale(.large)
            }
        )
        .sheet(isPresented: $isShowingSettingsView) {
            Text("Settings")
        }
    }
}


struct UpdateListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UpdatesListView()
                .environmentObject(UserUpdatesStore())
        }
    }
}
