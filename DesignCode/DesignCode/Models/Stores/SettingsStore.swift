//
//  SettingsStore.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/29/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    private var didChangeCancellable: AnyCancellable?
    
    @UserDefault(Constants.UserDefaultsKey.notificationsAreEnabled, defaultValue: false)
    var notificationsAreEnabled: Bool

    @UserDefault(Constants.UserDefaultsKey.notificationsPerWeek, defaultValue: 1)
    var notificationsPerWeek: Int

    @UserDefault(Constants.UserDefaultsKey.favoriteCourse, defaultValue: CoursesStore.defaultCourses[0])
    var favoriteCourse: Course

    @UserDefault(Constants.UserDefaultsKey.userEmailAddress, defaultValue: "foo@bar.com")
    var userEmailAddress: String
    

    init(notificationCenter: NotificationCenter = .default) {
        didChangeCancellable = notificationCenter
            .publisher(for: UserDefaults.didChangeNotification)
            .map({ _ in () })
            .receive(on: DispatchQueue.main)
            .subscribe(objectWillChange)
    }
}


// MARK: - UserDefaults Access
extension SettingsStore {
  

//    var notificationsAreEnabled: Bool {
//        get { defaults.bool(forKey: UserDefaultsKey.notificationsAreEnabled) }
//        set { defaults.set(newValue, forKey: UserDefaultsKey.notificationsAreEnabled) }
//    }
//
//
//    var notificationsPerWeek: Int {
//        get { defaults.integer(forKey: UserDefaultsKey.notificationsPerWeek) }
//        set { defaults.set(newValue, forKey: UserDefaultsKey.notificationsPerWeek) }
//    }
//
//
//    var favoriteCourse: Course {
//        get {
//            guard
//                let course = defaults.object(forKey: UserDefaultsKey.favoriteCourse) as? Course
//            else {
//                assertionFailure("Failed to retreive a course from user defaults")
//                return CoursesStore.defaultCourses[0]
//            }
//
//            return course
//        }
//
//        set { defaults.set(newValue, forKey: UserDefaultsKey.favoriteCourse) }
//    }
//
//
//    var userEmailAddress: String {
//        get { defaults.string(forKey: UserDefaultsKey.userEmailAddress) ?? "" }
//        set { defaults.set(newValue, forKey: UserDefaultsKey.userEmailAddress) }
//    }
}
