//
//  dashboard_top.swift
//  Micro
//
//  Created by Chase Robbins on 9/8/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct dashboard_top: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore

    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                HStack{
                    Text("Hello,")
                    Text("{firstname}") //embed firstname here
                        .fontWeight(.semibold)
                }.font(.title)
                    .padding(.bottom)
                Text("Welcome back. How are you feeling?")
                    .fontWeight(.light)
            }.padding(.bottom)
                .foregroundColor(Color.white)
            //disable above line for testing in view
            
            Button(action: {
                self.viewRouter.currentPage = "survey"
            }){
                //button content
                Rectangle()
                    .fill(Color.white)
                    .frame(maxHeight: 60)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.5), radius: 3, y: 3)
                    .overlay(
                        HStack{
                            Text("daily check in")
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
}

struct dashboard_top_Previews: PreviewProvider {
    static var previews: some View {
        dashboard_top()
        .environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}
