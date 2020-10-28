//
//  MultipleChoiceTemplate.swift
//  Micro
//
//  Created by Chase Robbins on 9/9/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct MultipleChoiceTemplate: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore
    

    var options = ["easily distracted", "somewhat distracted", "fairly focused", "very focused", "laser focused"]
    var leadingText = "i  was..."
    var closingText = "...yesterday"
    @State var selectionIndex = 0
    
    var body: some View {
        VStack{
            HStack{
                Text(leadingText)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            Picker(selection: $selectionIndex, label: Text("")) {
               ForEach(0 ..< options.count) {
                  Text(self.options[$0])
               }
            }.labelsHidden()
            HStack{
                Text(closingText)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
        }
    }
}

struct MultipleChoiceTemplate_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoiceTemplate().environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}
