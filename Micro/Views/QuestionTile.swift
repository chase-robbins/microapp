//
//  QuestionTile.swift
//  Micro
//
//  Created by Chase Robbins on 9/9/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct QuestionTile: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore

    var body: some View {
        ZStack{
            Rectangle()
            .fill(Color.white)
            .cornerRadius(30)
            .frame(maxHeight: 500)
            .shadow(radius: 10)
            VStack{
                HStack{
                    Text("01")
                        .underline()
                        .font(.system(size: 50))
                    VStack{
                        Text("of 03")
                            .padding(.top)
                    }
                    Spacer()
                }.padding(.leading)
                MultipleChoiceTemplate().padding(.all)
            }
        }
    }
}

struct QuestionTile_Previews: PreviewProvider {
    static var previews: some View {
        QuestionTile().environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}
