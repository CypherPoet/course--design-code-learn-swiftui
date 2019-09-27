//
//  UserUpdatesStore.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/26/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import Foundation
import Combine


final class UserUpdatesStore: ObservableObject {
    
    static var defaultUpdates = [
        UserUpdate(
            title: "SwiftUI",
            bodyText: "Create magic with SwiftUI",
            isUnread: true,
            date: Date().addingTimeInterval(-1 * (60 * 60 * 24 * 2))
        ),
        UserUpdate(
            title: "Achievement Unlocked",
            bodyText: "You won an Apple Design Award",
            isUnread: true,
            date: Date().addingTimeInterval(-1 * (60 * 60 * 24 * 4))
        ),
        UserUpdate(
            title: "New Courses Available",
            bodyText: "3 new courses have been published since your last visit",
            isUnread: false,
            date: Date().addingTimeInterval(-1 * (60 * 60 * 24 * 6))
        ),
    ]
    
    @Published var updates: [UserUpdate]
    
    
    init(updates: [UserUpdate] = UserUpdatesStore.defaultUpdates) {
        self.updates = updates
    }
}
