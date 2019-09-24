//
//  CoursesStore.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/23/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import Foundation
import Combine


final class CoursesStore: ObservableObject {
    
    static var defaultCourses = [
        Course(title: "Build an App with SwiftUI"),
        Course(title: "Course 2"),
        Course(title: "Course 3"),
        Course(title: "Course 4"),
    ]
    
    @Published var courses: [Course]
    
    init(courses: [Course] = CoursesStore.defaultCourses) {
        self.courses = courses
    }
}

