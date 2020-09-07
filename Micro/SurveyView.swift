//
//  SurveyView.swift
//  Micro
//
//  Created by Chase Robbins on 9/5/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct SurveyView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("test")
        }
        .background(
            Image("Survey_BG")
                .resizable()
                .clipped()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)

        )
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
