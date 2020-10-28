//
//  SurveyMaster.swift
//  Micro
//
//  Created by Chase Robbins on 9/9/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct SurveyMaster: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore

    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(red: 181/256, green: 220/256, blue: 245/256))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)

            QuestionTile().padding(.all).overlay(
                QuestionTile().padding(.bottom).padding(.all)
            )
        }
    }
}

struct SurveyMaster_Previews: PreviewProvider {
    static var previews: some View {
        SurveyMaster().environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}
