//
//  dashboard_bottom.swift
//  Micro
//
//  Created by Chase Robbins on 9/9/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct dashboard_bottom: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore

    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Track progress, set goals, and more.")
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 82 / 255, green: 126 / 255, blue: 90 / 255))

            }.padding(.bottom)
                .foregroundColor(Color.white)
            //disable above line for testing in view
            
            Button(action: {
                //daily check in
                print("test")
            }){
                //button content
                Rectangle()
                    .fill(Color.white)
                    .frame(maxHeight: 60)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.5), radius: 3, y: 3)
                    .overlay(
                        HStack{
                            Text("insights and statistics")
                                .fontWeight(.bold)
                            .foregroundColor(Color.black)
                                .padding(.leading, 30)
                                .padding(.vertical, 30)
                            Spacer()
                        }
                    )
                }
            }
}

struct dashboard_bottom_Previews: PreviewProvider {
    static var previews: some View {
        dashboard_bottom()
        .environmentObject(ViewRouter())
        .environmentObject(SessionStore())

    }
}
}
