//
//  CoursesListView.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/23/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct CoursesListView: View {
    @EnvironmentObject var coursesStore: CoursesStore
    
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(coursesStore.courses.indexed(), id: \.1.id) { index, _ in
                        CourseListCard(course: self.$coursesStore.courses[index])
                            .padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle("Courses", displayMode: .large)
        }
    
    }
}

struct CoursesListView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesListView()
            .environmentObject(CoursesStore())
    }
}
