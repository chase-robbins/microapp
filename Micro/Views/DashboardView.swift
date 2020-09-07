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
        VStack{
            Text("Welcome back user")
            Button(action: session.signOut ){
                Text("Sign Out")
            }
        }
    } 
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView().environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}
