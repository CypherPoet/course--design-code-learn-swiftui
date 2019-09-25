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
    
    @State private var isShowingCourseSheet = false
    private var cardInnerSpacing: CGFloat = 26
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: cardInnerSpacing) {
                    ForEach(coursesStore.courses.indexed(), id: \.1.id) { index, course in
                        Button(action: {
                            self.isShowingCourseSheet.toggle()
                        }) {
                            CourseListCard(course: self.$coursesStore.courses[index])
                                .padding(.horizontal)
                        }
                        .accessibility(label: Text("Open details for the course \"\(course.title)\""))
                        .sheet(isPresented: self.$isShowingCourseSheet) {
                            CertificatesView()
                        }
                    }
                    .padding(.leading, cardInnerSpacing)
                    .padding(.vertical)
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
