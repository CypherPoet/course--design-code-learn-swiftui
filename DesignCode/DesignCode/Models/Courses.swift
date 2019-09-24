//
//  Courses.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/23/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import Foundation

struct Course: Identifiable, Hashable {
    let id = UUID()
    
    var title: String
}
