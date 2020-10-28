//
//  dashboard_middle.swift
//  Micro
//
//  Created by Chase Robbins on 9/8/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct dashboard_middle: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore

    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("11")
                        .font(.system(size: 75))
                        .fontWeight(.bold)
                    Text("days")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, -10)
                }
                VStack{
                    Text("Current")
                        .fontWeight(.bold)
                        .font(.system(size:24))

                    Text("Check-in")
                        .fontWeight(.bold)
                        .font(.system(size:24))
                        .padding(.vertical,-0.5)

                    Text("Streak")
                        .fontWeight(.bold)
                        .font(.system(size:24))
                }
            }
            Rectangle()
                .fill(Color.black)
                .frame(maxHeight: 1)
                .padding(.horizontal)
                .padding(.bottom)
            HStack{
                VStack{
                    Rectangle()
                        .fill(Color.black)
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(10)
                    .overlay(
                        VStack{
                            Text("5")
                                .font(.system(size: 20))
                            Text("Aug")
                        }.foregroundColor(Color.white)
                    )
                    }.opacity(0.7)
                VStack{
                    Rectangle()
                        .fill(Color.black)
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(10)
                    .overlay(
                        VStack{
                            Text("6")
                                .font(.system(size: 20))
                            Text("Aug")
                        }.foregroundColor(Color.white)
                    )
                    }.opacity(0.7)
                VStack{
                    Rectangle()
                        .fill(Color.black)
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(10)
                    .overlay(
                        VStack{
                            Text("7")
                                .font(.system(size: 20))
                            Text("Aug")
                        }.foregroundColor(Color.white)
                    )
                    }.opacity(0.7)
                VStack{
                    Rectangle()
                        .fill(Color.black)
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(10)
                    .overlay(
                        VStack{
                            Text("8")
                                .font(.system(size: 20))
                            Text("Aug")
                        }.foregroundColor(Color.white)
                    )
                }.opacity(0.7)
                VStack{
                    Rectangle()
                        .fill(Color.black)
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(10)
                    .overlay(
                        VStack{
                            Text("9")
                                .font(.system(size: 20))
                            Text("Aug")
                        }.foregroundColor(Color.white)
                    )
                }
            }
        }
        
    }
}

struct dashboard_middle_Previews: PreviewProvider {
    static var previews: some View {
        dashboard_middle()
        .environmentObject(ViewRouter())
        .environmentObject(SessionStore())

    }
}
