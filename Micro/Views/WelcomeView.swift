//
//  WelcomeView.swift
//  Micro
//
//  Created by Chase Robbins on 9/5/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore
    
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Spacer()
                HStack{
                    Text("Microdose\nWith Confidence")
                        .font(
                            .system(size: 45, weight: .light)
                        )
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                Spacer().frame(height:15)
                
                HStack{
                    Text("Track mood, creativity, and more. Take the guesswork out of your protocol.")
                    .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                    Spacer()
                }
                Spacer().frame(height:15)
                
                HStack{
                    Button(action: {
                        self.viewRouter.currentPage = "login"
                    }) {
                        Text("get started")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                    Spacer()
                    }
                }
            }
        }
        .padding(.horizontal, 50.0)
        .padding(.bottom, 30.0)
        .background(
            Image("WelcomeBG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().environmentObject(ViewRouter())
        .environmentObject(SessionStore())

    }
}
