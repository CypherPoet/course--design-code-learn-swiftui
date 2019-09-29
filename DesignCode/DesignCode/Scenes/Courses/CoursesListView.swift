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
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading, spacing: 12) {
                Text("\(coursesStore.courses.count) Courses")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.secondary)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: cardInnerSpacing) {
                        ForEach(coursesStore.courses.indexed(), id: \.1.id) { index, course in
                            Button(action: {
                                self.isShowingCourseSheet.toggle()
                            }) {
                                CourseListCard(course: self.$coursesStore.courses[index])
                            }
                            .accessibility(label: Text("Open details for the course \"\(course.title)\""))
                            .sheet(isPresented: self.$isShowingCourseSheet) {
                                CertificatesView()
                            }
                        }
                    }
                    .padding(.bottom, cardInnerSpacing)
                    .padding(.leading, cardInnerSpacing)
                }
                .padding(.leading, -cardInnerSpacing)
            }
            .padding(.top, 32)
            
            Spacer()
            
        }
        .padding(.leading, 22)
        .navigationBarTitle("Courses", displayMode: .large)
    }
}

struct CoursesListView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesListView()
            .environmentObject(CoursesStore())
    }
}
