//
//  DashboardView.swift
//  Micro
//
//  Created by Chase Robbins on 9/6/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore

    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                .fill(Color(red: 0 / 255, green: 69 / 255, blue: 16 / 255))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            }
            VStack{
                ZStack{
                    Image("dashboard_top")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    dashboard_top().padding(.all)
                }
                Spacer()
                
                dashboard_middle().colorInvert()
                
                Spacer()
                
                ZStack{
                    Image("dashboard_bottom")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                    dashboard_bottom().padding(.all)
                }

                
            }.edgesIgnoringSafeArea(.all)

        }
    } 
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView().environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}
