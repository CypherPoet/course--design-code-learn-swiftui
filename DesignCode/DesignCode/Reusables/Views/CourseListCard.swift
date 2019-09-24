//
//  CourseListCard.swift
//  DesignCode
//
//  Created by Brian Sipple on 9/24/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct CourseListCard: View {
    @Binding var course: Course
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(course.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .lineLimit(4)
                .frame(width: 140)
            
            Spacer()
            
            Image("Illustration1")
        }
        .padding()
        .background(Color("background3"))
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: Color("BackgroundShadow3"), radius: 20, x: 0, y: 20)
    }
}

struct CourseListCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CourseListCard(course: .constant(Course(
                title: "Building an app with SwiftUI and Combine"
            )))
            
            CourseListCard(course: .constant(Course(
                title: "Building an app with SwiftUI and Combine"
            )))
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
        }
        
    }
}
