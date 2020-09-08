//
//  ContentView.swift
//  Micro
//
//  Created by Chase Robbins on 9/4/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

 
import SwiftUI
 
struct ContentView: View {
    
    @EnvironmentObject var session: SessionStore
    @EnvironmentObject var viewRouter: ViewRouter
    
    func getUser(){
        session.listen()
    }

    var body: some View{
        HStack{

            if session.session != nil { //place secured pages inside here
                if viewRouter.currentPage == "dashboard"{
                    DashboardView()
                        .transition(.opacity)
                } //else if {
            } else { //insecure pages inside here
                if viewRouter.currentPage == "login" {
                    LoginPage()
                    .transition(.opacity)
                } else
                if viewRouter.currentPage == "welcome" {
                    WelcomeView()
                    .transition(.opacity)
                    
                } else
                if viewRouter.currentPage == "signup" {
                    SignUpView()
                    .transition(.opacity)
                } else {
                    WelcomeView()
                        .transition(.opacity)
                }
            }
            
        }.onAppear(perform: getUser)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}

